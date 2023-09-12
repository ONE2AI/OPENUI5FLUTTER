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
  int selectedValue = 1;

  void onRadioChanged(int value) {
    setState(() {
      selectedValue = value;
      print('Selected value: $value');
      // Add your radio button interaction logic here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5FLUTTER'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UI5RadioButton(
              value: 1,
              groupValue: selectedValue,
              onChanged: onRadioChanged,
              title: 'Option 1',
            ),
            UI5RadioButton(
              value: 2,
              groupValue: selectedValue,
              onChanged: onRadioChanged,
              title: 'Option 2',
            ),
            UI5RadioButton(
              value: 3,
              groupValue: selectedValue,
              onChanged: onRadioChanged,
              title: 'Option 3',
            ),
          ],
        ),
      ),
    );
  }
}
