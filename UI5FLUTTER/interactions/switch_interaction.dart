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
  bool isSwitchOn = false;

  void onSwitchToggle(bool value) {
    setState(() {
      isSwitchOn = value;
      print('Switch state: $value');
      // Add your switch interaction logic here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5FLUTTER'),
      ),
      body: Center(
        child: UI5Switch(
          value: isSwitchOn,
          onChanged: onSwitchToggle,
          title: 'Enable Feature',
        ),
      ),
    );
  }
}
