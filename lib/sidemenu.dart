import 'package:flutter/material.dart';
import 'package:tugas3/Minuman.dart';
import 'package:tugas3/makanan.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text('Menu Restoran'), 
            ),
        ListTile(
          leading: const Icon(Icons.food_bank),
          title: const Text('Makanan'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Makanan(),
              ),
            );
          },
        ),
        ListTile(
          leading: const Icon(Icons.no_drinks),
          title: const Text('Minuman'),
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Minuman(),
              ),
            );
          },
        ),
    ]));
  }
}