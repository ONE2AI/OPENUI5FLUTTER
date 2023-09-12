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
  String inputText = '';

  void onTextChange(String text) {
    setState(() {
      inputText = text;
      print('Input text: $text');
      // Add your text field interaction logic here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5FLUTTER'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UI5TextField(
              value: inputText,
              onChanged: onTextChange,
              placeholder: 'Enter text...',
            ),
            SizedBox(height: 16),
            Text('Input Text: $inputText'),
          ],
        ),
      ),
    );
  }
}
