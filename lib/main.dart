import 'package:flutter/material.dart';
import 'package:farmer_ui_flutter/screens/loading_screen.dart';
//import 'package:farmer_ui_flutter/screens/login_screen.dart';

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
      home: LoadingScreen(),
    );
  }
}
