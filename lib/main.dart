import 'package:flutter/material.dart';
import 'package:tugas3/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  get http => null;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Halaman Login',
      home: LoginPage(),
    );
  }
}
