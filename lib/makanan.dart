// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class Makanan extends StatefulWidget {
  const Makanan({super.key});

  @override
  State<Makanan> createState() => _MakananState();
}

class _MakananState extends State<Makanan> {
  get http => null;
Color warna = Colors.black;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Menu Makanan"),
        actions: const [
          Icon(
            Icons.food_bank, color: Colors.white,)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sesame Chicken Pizza",
            style: TextStyle(color: warna),),

          Text("Tokyo Gyu Pizza ",
            style: TextStyle(color: warna),),

          ElevatedButton(
            onPressed:(){
            setState(() {
                warna = Colors.red;
              });
            },
            child: const Text("Pesan Makanan")),
        ]),
        drawer: const SideMenu(),
    );
  }
}