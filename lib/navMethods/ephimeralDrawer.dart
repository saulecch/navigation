import 'package:flutter/material.dart';

class EphimeralDrawerNavigation extends StatelessWidget {
  const EphimeralDrawerNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer efímero'),
      ),
      drawer: Drawer(
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
                Navigator.pushNamed(context, '/one');
              },
            ),
            ListTile(
              leading: const Icon(Icons.business),
              title: const Text('Dos'),
              onTap: () {
                Navigator.pushNamed(context, '/two');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Tres'),
              onTap: () {
                Navigator.pushNamed(context, '/three');
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Página principal'),
      ),
    );
  }
}
