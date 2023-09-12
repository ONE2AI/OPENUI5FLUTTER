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
  RangeValues rangeValues = RangeValues(20, 80);

  void onRangeChanged(RangeValues values) {
    setState(() {
      rangeValues = values;
      print('Range values: ${values.start}, ${values.end}');
      // Add your range slider interaction logic here
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
            UI5RangeSlider(
              values: rangeValues,
              onChanged: onRangeChanged,
              min: 0,
              max: 100,
              divisions: 10,
              labels: RangeLabels('${rangeValues.start}', '${rangeValues.end}'),
            ),
            SizedBox(height: 16),
            Text('Range Values: ${rangeValues.start}, ${rangeValues.end}'),
          ],
        ),
      ),
    );
  }
}
