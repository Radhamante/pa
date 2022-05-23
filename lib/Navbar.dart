import 'package:flutter/material.dart';
import 'package:pa/pages/Page1.dart';
import 'package:pa/pages/Page2.dart';
import 'package:pa/pages/Page3.dart';

int _selectedIndex = 0;

class Navbar extends StatefulWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  State<Navbar> createState() => _NavbarState();

}

class _NavbarState extends State<Navbar> {
  static const List<Widget> _pages = <Widget>[
    Page1(),
    Page2(),
    Page3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to SmartGloves'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.zoom_out_map_outlined),
            label: 'Page 3',
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
