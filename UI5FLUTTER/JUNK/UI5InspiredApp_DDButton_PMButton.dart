/// Below is an example code that demonstrates the implementation of DropdownButton and PopupMenuButton in Flutter
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
  String _selectedOption = 'Option 1';
  String _selectedPopupMenuOption = 'Option 1';

  final List<String> _dropdownOptions = ['Option 1', 'Option 2', 'Option 3'];

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
            DropdownButton<String>(
              value: _selectedOption,
              onChanged: (newValue) {
                setState(() {
                  _selectedOption = newValue!;
                });
              },
              items: _dropdownOptions.map((option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              icon: Icon(Icons.arrow_drop_down), // UI5-inspired icon for the dropdown
              iconSize: 24.0,
              elevation: 16,
              style: TextStyle(color: Colors.black), // UI5-inspired text style for the dropdown
              underline: Container(
                height: 2,
                color: Colors.blue, // UI5-inspired underline color for the dropdown
              ),
            ),
            SizedBox(height: 16.0),
            PopupMenuButton<String>(
              onSelected: (value) {
                setState(() {
                  _selectedPopupMenuOption = value;
                });
              },
              itemBuilder: (BuildContext context) {
                return _dropdownOptions.map((option) {
                  return PopupMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList();
              },
              child: ListTile(
                title: Text('Selected Option: $_selectedPopupMenuOption'),
                trailing: Icon(Icons.arrow_drop_down), // UI5-inspired icon for the popup menu
              ),
            ),
          ],
        ),
      ),
    );
  }
}
