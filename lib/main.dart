import 'dart:convert';

import 'package:first_app/add_item/add_item_screen.dart';
import 'package:first_app/add_item/item_model.dart';
import 'package:first_app/dashboard/nav_bar.dart';
import 'package:first_app/favorite/favorite_model.dart';
import 'package:first_app/profile/user_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dashboard/dashboard_screen.dart';
import 'details/details_screen/details_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => UserModel()),
        ChangeNotifierProvider(create: (context) => ItemModel()),
        ChangeNotifierProvider(create: (context) => FavoriteModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: NavBar(),
    );
  }
}
