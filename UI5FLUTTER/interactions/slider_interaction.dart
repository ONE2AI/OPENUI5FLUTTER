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
  double sliderValue = 0;

  void onSliderChange(double value) {
    setState(() {
      sliderValue = value;
      print('Slider value: $value');
      // Add your slider interaction logic here
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
            UI5Slider(
              value: sliderValue,
              onChanged: onSliderChange,
              min: 0,
              max: 100,
              divisions: 10,
              label: '$sliderValue',
            ),
            SizedBox(height: 16),
            Text('Slider Value: $sliderValue'),
          ],
        ),
      ),
    );
  }
}
