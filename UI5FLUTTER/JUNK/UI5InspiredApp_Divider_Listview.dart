/// Here is an example of using Divider in a ListView
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
      body: ListView(
        children: [
          ListTile(title: Text('Item 1')),
          Divider(), // Horizontal divider line
          ListTile(title: Text('Item 2')),
          Divider(color: Colors.blue, height: 2.0), // Customized divider
          ListTile(title: Text('Item 3')),
        ],
      ),
    );
  }
}
