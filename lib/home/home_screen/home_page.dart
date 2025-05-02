import 'dart:io';

import 'package:first_app/firstscreen.dart';
import 'package:first_app/home/profile/profile_page/profile_page.dart';
import 'package:flutter/material.dart';

import '../home_widget/home_widget.dart';

class MyHomePage extends StatelessWidget {
  final String? title;

  final String? body;
  final List<File>? image;
  const MyHomePage({this.image, this.title, this.body, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            icon: Icon(Icons.account_box),
          ),
        ],
        centerTitle: true,
        title: Text("The ${title ?? "Tree"}"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            image == null || image!.isEmpty ? Image.asset("assets/tree2.jpg"):Image.file(image![0],height: 300,fit: BoxFit.cover,width: double.infinity,),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                Favoritwidget(),
                IconButton(onPressed: () {}, icon: Icon(Icons.share)),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                textAlign: TextAlign.justify,
                body ??
                    "Trees and forests provide a habitat for many species of animals and plants. Tropical rainforests are among the most biodiverse habitats in the world. Trees provide shade and shelter, timber for construction, fuel for cooking and heating",
              ),
            ),
            image == null || image!.isEmpty
                ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MySeason(text: "spring", url: "assets/tree3.jpg"),
                    MySeason(text: "Fall", url: "assets/tree1.jpg"),
                  ],
                )
                : SizedBox(
              height:500 ,
                  child: GridView.builder(
                    itemCount: image!.length,
                    itemBuilder: (context, index) => Image.file(image![index],height: 200,width: 200,fit: BoxFit.cover,),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                  ),
                ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Firstscreen()),
          );
        },
        child: Icon(Icons.next_plan),
      ),
    );
  }
}
