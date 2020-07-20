import 'package:flutter/material.dart';

import 'package:wetrac/constants/route_paths.dart' as routes;

class BottomnavbarWidget extends StatefulWidget {
  const BottomnavbarWidget({
    Key key,
  }) : super(key: key);

  @override
  _BottomnavbarWidgetState createState() => _BottomnavbarWidgetState();
}

class _BottomnavbarWidgetState extends State<BottomnavbarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    Navigator.of(context).pushReplacementNamed(
      routes.DocumentRoute,
    );

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          title: Text('Documents'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Theme.of(context).primaryColor,
      onTap: _onItemTapped,
    );
  }
}
