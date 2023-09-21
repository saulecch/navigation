import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepOrange,
            ),
            child: Text(
              'Encabezado',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Uno'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/one');
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('Dos'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/two');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Tres'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/three');
            },
          ),
        ],
      ),
    );
  }
}
