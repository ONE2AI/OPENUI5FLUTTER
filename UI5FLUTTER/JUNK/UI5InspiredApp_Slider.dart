/// Below is an example code that demonstrates the implementation of Slider and RangeSlider in Flutter
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
  double _sliderValue = 0.0;
  RangeValues _rangeSliderValues = RangeValues(20.0, 80.0);

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
            Slider(
              value: _sliderValue,
              onChanged: (newValue) {
                setState(() {
                  _sliderValue = newValue;
                });
              },
              min: 0.0,
              max: 100.0,
              divisions: 10,
              label: 'Value: ${_sliderValue.toInt()}',
            ),
            SizedBox(height: 16.0),
            RangeSlider(
              values: _rangeSliderValues,
              onChanged: (newValues) {
                setState(() {
                  _rangeSliderValues = newValues;
                });
              },
              min: 0.0,
              max: 100.0,
              divisions: 10,
              labels: RangeLabels('${_rangeSliderValues.start.toInt()}', '${_rangeSliderValues.end.toInt()}'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Slider Value: ${_sliderValue.toInt()}',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 8.0),
            Text(
              'Range Slider Values: ${_rangeSliderValues.start.toInt()} - ${_rangeSliderValues.end.toInt()}',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
