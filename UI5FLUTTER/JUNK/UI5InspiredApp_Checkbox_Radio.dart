/// Below is an example code that demonstrates the implementation of Checkbox and Radio in Flutter
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
  bool _checkBoxValue = false;
  String _radioValue = 'Option 1';

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
            Checkbox(
              value: _checkBoxValue,
              onChanged: (newValue) {
                setState(() {
                  _checkBoxValue = newValue!;
                });
              },
              activeColor: Colors.blue, // UI5-inspired active color for the checkbox
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio<String>(
                  value: 'Option 1',
                  groupValue: _radioValue,
                  onChanged: (newValue) {
                    setState(() {
                      _radioValue = newValue!;
                    });
                  },
                  activeColor: Colors.blue, // UI5-inspired active color for the radio button
                ),
                Text('Option 1'),
                Radio<String>(
                  value: 'Option 2',
                  groupValue: _radioValue,
                  onChanged: (newValue) {
                    setState(() {
                      _radioValue = newValue!;
                    });
                  },
                  activeColor: Colors.blue, // UI5-inspired active color for the radio button
                ),
                Text('Option 2'),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Checkbox Value: $_checkBoxValue', // Display the checkbox value below the Checkbox
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Selected Radio Option: $_radioValue', // Display the selected radio option below the Radio buttons
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
