import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_platform_interface/image_picker_platform_interface.dart';

import '../profile_widget/options.dart';
import 'package:provider/provider.dart';

import '../user_model.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("profile")),
      body: Column(
        children: [
          Center(
            child: Consumer <UserModel>(
              builder: (context, userModel, child) {
                return Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey.shade500,
                      radius: 100,
                      child: userModel.user?.image == null
                          ? Icon(Icons.person, size: 200, color: Colors.white38)
                          : ClipOval(
                        child: Image.file(
                          height: 200,
                          width: 200,
                          fit: BoxFit.cover,
                          userModel.user !.image !,
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 25,
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder:
                                (context) =>
                                SizedBox(
                                  height: 150,
                                  child: Column(
                                    children: [
                                      Text(
                                        "profile",
                                        style: TextStyle(fontSize: 25),
                                      ),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Options(
                                            onPressed: () {
                                              userModel. imageSelector(ImageSource.camera);
                                              Navigator.pop(context);
                                            },
                                            title: "Camera",
                                            icon: Icons.camera_alt,
                                          ),
                                          Options(
                                            onPressed: () {
                                              userModel. imageSelector(
                                                  ImageSource.gallery);
                                              Navigator.pop(context);
                                            },
                                            title: "Gallery",
                                            icon: Icons.image,
                                          ),
                                          if (userModel.user ?.image != null)
                                            Options(
                                              selectedImage: userModel.user ?.image,
                                              onPressed: () {
                                                userModel.removeImage();
                                                Navigator.pop(context);
                                              },
                                              title: "delete",
                                              icon: Icons.delete,
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                          );
                        },
                        icon: Icon(
                            color: Colors.grey, Icons.camera_alt, size: 35),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),



          ListTile(leading: Icon(Icons.person),
            title: Text("Name"),
            subtitle: Text("Sara Mostafa"),),
          ListTile(leading: Icon(Icons.info),
            title: Text("Bio"),
            subtitle: Text("code eat sleep repeat"),)
        ],
      ),
    );
  }
}


