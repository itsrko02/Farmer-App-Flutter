import 'package:flutter/material.dart';
import 'package:farmer_ui_flutter/screens/home_screen.dart';
class SelectedTab{

  final tabs = [
    HomePage(),
    Center(
      child: Text('Cart'),
    ),
    Center(
      child: Text('Chat'),
    ),
    Center(
      child: Text('Settings'),
    ),
  ];
}