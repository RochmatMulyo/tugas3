// ignore_for_file: prefer_typing_uninitialized_variables, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:tugas3/sidemenu.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

@override
_HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get http => null;
  var namauser;
  void _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    namauser = prefs.getString('username');
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    _loadUsername();
    var namauser2 = namauser;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Text('Selamat Datang $namauser2')),
      drawer: const SideMenu(),
      );
  }
}

