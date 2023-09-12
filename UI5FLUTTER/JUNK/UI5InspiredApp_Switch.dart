/// Below is an example code that demonstrates the implementation of a Switch in Flutter
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

class UI5InspiredHomePage extends StatefulWidget {
  @override
  _UI5InspiredHomePageState createState() => _UI5InspiredHomePageState();
}

class _UI5InspiredHomePageState extends State<UI5InspiredHomePage> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5 Inspired App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Switch(
              value: _switchValue,
              onChanged: (newValue) {
                setState(() {
                  _switchValue = newValue;
                });
              },
              activeColor: Colors.blue, // UI5-inspired active color for the switch
              activeTrackColor: Colors.blue.withOpacity(0.5), // UI5-inspired active track color
              inactiveThumbColor: Colors.grey, // UI5-inspired inactive thumb color
              inactiveTrackColor: Colors.grey.withOpacity(0.5), // UI5-inspired inactive track color
            ),
            SizedBox(height: 16.0),
            Text(
              'Switch Value: $_switchValue', // Display the switch value below the Switch
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
