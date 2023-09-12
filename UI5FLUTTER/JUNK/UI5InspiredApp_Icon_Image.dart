/// Below is an example code that demonstrates the use of IconButton and Image widgets in Flutter
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.favorite), // An example of an icon from the Material Icons
              onPressed: () {
                // Handle button press
              },
              iconSize: 48.0, // Custom icon size
              color: Colors.red, // Custom icon color
            ),
            SizedBox(height: 16.0),
            Image.asset(
              'assets/ui5_logo.png', // Path to your UI5-inspired logo image asset
              width: 100.0, // Custom image width
              height: 100.0, // Custom image height
            ),
          ],
        ),
      ),
    );
  }
}
