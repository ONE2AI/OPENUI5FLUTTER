/// Below is an example code that demonstrates the implementation of ExpansionPanel and ExpansionPanelList in Flutter
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
  List<Item> _items = [
    Item(
      header: 'Header 1',
      body: 'Content for Header 1',
      isExpanded: false,
    ),
    Item(
      header: 'Header 2',
      body: 'Content for Header 2',
      isExpanded: false,
    ),
    Item(
      header: 'Header 3',
      body: 'Content for Header 3',
      isExpanded: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5 Inspired App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ExpansionPanelList(
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              _items[panelIndex].isExpanded = !isExpanded;
            });
          },
          children: _items.map((item) {
            return ExpansionPanel(
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text(item.header),
                );
              },
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(item.body),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Item {
  String header;
  String body;
  bool isExpanded;

  Item({
    required this.header,
    required this.body,
    required this.isExpanded,
  });
}
