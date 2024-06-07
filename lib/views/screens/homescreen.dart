import 'package:contactapp/views/screens/contactsscreen.dart';
import 'package:contactapp/views/screens/phone.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Favourite'),
    Text('Recent'),
    Contactsscreen(),
    Phonescreen(),
    Text('Answers Automacticly'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.clock), label: 'Recent'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_crop_circle_fill),
              label: 'Contacts'),
          BottomNavigationBarItem(icon: Icon(Icons.dialpad), label: 'Dialpad'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass_fill), label: 'Answer machine'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
