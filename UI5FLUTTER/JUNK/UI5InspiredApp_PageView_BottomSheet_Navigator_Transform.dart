/// Below is an example code that demonstrates the use of PageView, BottomSheet, Navigator, and Transform widgets in Flutter
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

class UI5InspiredHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5 Inspired App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PageViewExample()),
              );
            },
            child: Text('Open PageView Example'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 200.0,
                    color: Colors.white,
                    child: Center(
                      child: Text('This is a BottomSheet'),
                    ),
                  );
                },
              );
            },
            child: Text('Open BottomSheet'),
          ),
          SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TransformExample()),
              );
            },
            child: Text('Open Transform Example'),
          ),
        ],
      ),
    );
  }
}

class PageViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView Example'),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(child: Text('Page 1')),
          ),
          Container(
            color: Colors.green,
            child: Center(child: Text('Page 2')),
          ),
          Container(
            color: Colors.blue,
            child: Center(child: Text('Page 3')),
          ),
        ],
      ),
    );
  }
}

class TransformExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform Example'),
      ),
      body: Center(
        child: Transform.rotate(
          angle: 0.5, // Rotate the child by 0.5 radians (around the center)
          child: Container(
            width: 200,
            height: 100,
            color: Colors.blue,
            child: Center(child: Text('Transform Example')),
          ),
        ),
      ),
    );
  }
}
