import 'package:flutter/material.dart';
import 'package:navigation/components/pages.dart';
import 'package:navigation/navMethods/bottomNavigation.dart';
import 'package:navigation/navMethods/ephimeralDrawer.dart';
import 'package:navigation/navMethods/indexedStack.dart';
import 'package:navigation/navMethods/persistentDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Demo',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: const EphimeralDrawerNavigation(),
      routes: {
        '/one': (context) => const PageOne(),
        '/two': (context) => const PageTwo(),
        '/three': (context) => const PageThree(),
      },
    );
  }
}

