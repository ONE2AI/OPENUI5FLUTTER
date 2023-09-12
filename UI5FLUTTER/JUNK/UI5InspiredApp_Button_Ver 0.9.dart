///Below is an example code that demonstrates the implementation of ElevatedButton, OutlinedButton, and TextButton widgets in Flutter
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
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                // Handle elevated button press
                print('Elevated Button Pressed');
              },
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 16.0),
            OutlinedButton(
              onPressed: () {
                // Handle outlined button press
                print('Outlined Button Pressed');
              },
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 16.0),
            TextButton(
              onPressed: () {
                // Handle text button press
                print('Text Button Pressed');
              },
              child: Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}

