/// an example code that demonstrates the usage of custom typography styles in Flutter
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
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.blue),
          headline6: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.blue),
          subtitle1: TextStyle(fontSize: 18.0, color: Colors.black),
          bodyText1: TextStyle(fontSize: 16.0, color: Colors.black),
          bodyText2: TextStyle(fontSize: 14.0, color: Colors.black54),
        ),
      ),
      home: UI5InspiredHomePage(),
    );
  }
}

class UI5InspiredHomePage extends StatelessWidget {
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
            Text(
              'Headline 1',
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(height: 16.0),
            Text(
              'Headline 6',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 16.0),
            Text(
              'Subtitle 1',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            SizedBox(height: 16.0),
            Text(
              'Body Text 1',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 16.0),
            Text(
              'Body Text 2',
              style: Theme.of(context).textTheme.bodyText2,
            ),
          ],
        ),
      ),
    );
  }
}
