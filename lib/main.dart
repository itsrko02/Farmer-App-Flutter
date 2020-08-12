import 'package:flutter/material.dart';
import 'components/bottom_navbar.dart';
void main() {
  runApp(FarmerApp());
}

class FarmerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
    );
  }
}
