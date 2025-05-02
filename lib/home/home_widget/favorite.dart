import 'package:flutter/material.dart';

class Favoritwidget extends StatefulWidget {
  const Favoritwidget({super.key});

  @override
  State<Favoritwidget> createState() => _FavoritwidgetState();
}

class _FavoritwidgetState extends State<Favoritwidget> {
  bool click=false;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: (){
      setState(() {
        click =! click;
      });
    }, icon:Icon(Icons.favorite , color: click ? Colors.red : Colors.grey,));
  }
}