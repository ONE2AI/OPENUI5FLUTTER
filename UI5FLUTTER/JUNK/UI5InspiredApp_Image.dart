/// Below is an example code that demonstrates the use of the Image widget in Flutter
import 'package:flutter/material.dart';

void main() {
  runApp(UI5InspiredApp());
}

class UI5InspiredApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI5 Inspired App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Segoe UI', // You can use a UI5-inspired font here
      ),
      home: UI5InspiredHomePage(),
    );
  }
}

class UI5InspiredHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5 Inspired App'),
      ),
      body: Center(
        child: Image.asset(
          'assets/ui5_logo.png', // Path to your UI5-inspired logo image asset
          width: 200.0, // Custom image width
          height: 200.0, // Custom image height
          fit: BoxFit.contain, // Adjust how the image is displayed within its bounds
        ),
      ),
    );
  }
}
