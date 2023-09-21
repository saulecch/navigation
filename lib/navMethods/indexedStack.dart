import 'package:flutter/material.dart';
import 'package:navigation/components/pages.dart';

class IndexedStackNavigation extends StatefulWidget {
  const IndexedStackNavigation({super.key});

  @override
  State<IndexedStackNavigation> createState() => _IndexedStackNavigationState();
}

class _IndexedStackNavigationState extends State<IndexedStackNavigation> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const <Widget>[
          PageOne(),
          PageTwo(),
          PageThree(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Uno',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Dos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Tres',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
