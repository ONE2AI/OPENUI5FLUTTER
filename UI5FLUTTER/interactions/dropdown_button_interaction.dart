import 'package:flutter/material.dart';
import 'package:ui5_flutter/ui5_flutter.dart';

void main() {
  runApp(UI5FLUTTER());
}

class UI5FLUTTER extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI5FLUTTER',
      theme: UI5Theme.lightTheme,
      home: UI5FLUTTERHomePage(),
    );
  }
}

class UI5FLUTTERHomePage extends StatefulWidget {
  @override
  _UI5FLUTTERHomePageState createState() => _UI5FLUTTERHomePageState();
}

class _UI5FLUTTERHomePageState extends State<UI5FLUTTERHomePage> {
  String selectedOption = 'Option 1';
  List<String> options = ['Option 1', 'Option 2', 'Option 3'];

  void onDropdownChanged(String value) {
    setState(() {
      selectedOption = value;
      print('Selected option: $value');
      // Add your dropdown interaction logic here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5FLUTTER'),
      ),
      body: Center(
        child: UI5DropdownButton(
          value: selectedOption,
          onChanged: onDropdownChanged,
          items: options.map((option) => UI5DropdownMenuItem(value: option, child: Text(option))).toList(),
        ),
      ),
    );
  }
}
