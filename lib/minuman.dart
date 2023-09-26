// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';

class Minuman extends StatefulWidget {
  const Minuman({super.key});

  @override
  State<Minuman> createState() => _MinumanState();
}

class _MinumanState extends State<Minuman> {
  get http => null;
Color warna = Colors.black;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Menu Minuman"),
        actions: const [
          Icon(
            Icons.no_drinks, color: Colors.white,)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
       
        children: [

          Text("Green Tea",
            style: TextStyle(color: warna),
          ),
          Text("Es Teh",
            style: TextStyle(color: warna),
          ),

          ElevatedButton(onPressed:(){
            setState(() {
                warna = Colors.green;
              });
            },
            child: const Text("Pesan Minuman")),
        ],
        ),
        drawer: const SideMenu(),
    );
  }
}