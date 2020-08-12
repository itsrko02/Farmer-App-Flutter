import 'package:flutter/material.dart';
import 'tabs.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SelectedTab().tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        iconSize: 28.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
//            backgroundColor: Colors.lightGreenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
//            backgroundColor: Colors.lightGreenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            title: Text('Chat'),
//            backgroundColor: Colors.lightGreenAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
//            backgroundColor: Colors.lightGreenAccent,
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}