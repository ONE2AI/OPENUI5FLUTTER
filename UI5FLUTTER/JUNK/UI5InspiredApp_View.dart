/// Below is an example code that demonstrates the implementation of ListView and GridView in Flutter
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
  final List<String> listItems = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5 Inspired App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(listItems[index]),
                      leading: Icon(Icons.circle), // UI5-inspired icon
                      onTap: () {
                        // Handle list item tap
                        print('Tapped on ${listItems[index]}');
                      },
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                ),
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: InkWell(
                      onTap: () {
                        // Handle grid item tap
                        print('Tapped on ${listItems[index]}');
                      },
                      child: Center(
                        child: Text(listItems[index]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 
