/// Below is a simple Flutter code example that demonstrates a UI design with some basic UI5-inspired elements, such as a card, button, and typography.
/// Included additional UI5-inspired elements, such as a list view and a footer
/// A simple list view with some sample items and a footer with navigation buttons
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
  final List<String> sampleItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5 Inspired App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: sampleItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(sampleItems[index]),
                  leading: Icon(Icons.check_circle),
                );
              },
            ),
          ),
          UI5InspiredFooter(),
        ],
      ),
    );
  }
}

class UI5InspiredFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue[50], // UI5-inspired footer color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          RaisedButton(
            onPressed: () {
              // Handle navigation button press
              // For demonstration purposes, simply show a snackbar
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Navigate Back pressed'),
                ),
              );
            },
            child: Text('Navigate Back'),
          ),
          RaisedButton(
            onPressed: () {
              // Handle navigation button press
              // For demonstration purposes, simply show a snackbar
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text('Navigate Forward pressed'),
                ),
              );
            },
            child: Text('Navigate Forward'),
          ),
        ],
      ),
    );
  }
}
