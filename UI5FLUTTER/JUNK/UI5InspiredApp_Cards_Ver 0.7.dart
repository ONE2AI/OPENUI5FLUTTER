///elow is an example code that demonstrates the use of Card widgets in Flutter to create UI5-inspired cards
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
      body: ListView.builder(
        itemCount: 5, // You can change the number of cards as needed
        itemBuilder: (context, index) {
          return UI5InspiredCard(
            itemTitle: 'Card ${index + 1}',
            itemDescription: 'Description of Card ${index + 1}',
          );
        },
      ),
    );
  }
}

class UI5InspiredCard extends StatelessWidget {
  final String itemTitle;
  final String itemDescription;

  UI5InspiredCard({required this.itemTitle, required this.itemDescription});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      elevation: 4.0,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              itemTitle,
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8.0),
            Text(
              itemDescription,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle button press
              },
              child: Text('Action'),
            ),
          ],
        ),
      ),
    );
  }
}
