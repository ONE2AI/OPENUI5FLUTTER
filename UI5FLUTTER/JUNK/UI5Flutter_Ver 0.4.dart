/// Below is a simple Flutter code example that demonstrates a UI design with some basic UI5-inspired elements, such as a card, button, and typography.
/// Included additional UI5-inspired elements, such as a list view and a footer
/// A simple list view with some sample items and a footer with navigation buttons
/// The app bar at the top, a list of UI5-inspired cards displaying sample items, and a UI5-inspired footer at the bottom with navigation icons
/// The app bar and button styles have been customized to match the UI5 design. The cards use a white background and rounded corners, and the text color follows the UI5-inspired color scheme

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
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white, // UI5-inspired app bar background color
          iconTheme: IconThemeData(color: Colors.blue), // UI5-inspired app bar icon color
          textTheme: TextTheme(
            headline6: TextStyle(
              color: Colors.blue, // UI5-inspired app bar title color
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue, // UI5-inspired button primary color
            textStyle: TextStyle(
              color: Colors.white, // UI5-inspired button text color
            ),
          ),
        ),
        cardTheme: CardTheme(
          color: Colors.white, // UI5-inspired card background color
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // UI5-inspired card border radius
          ),
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(
            fontSize: 16.0,
            color: Colors.black, // UI5-inspired body text color
          ),
          bodyText2: TextStyle(
            fontSize: 14.0,
            color: Colors.black54, // UI5-inspired secondary text color
          ),
        ),
      ),
      home: UI5InspiredHomePage(),
    );
  }
}

class UI5InspiredHomePage extends StatelessWidget {
  final List<String> sampleItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('UI5 Inspired App'),
          actions: [
            IconButton(
              icon: Icon(Icons.search), // UI5-inspired search icon
              onPressed: () {
                // Handle search button press
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                text: 'Tab 1', // UI5-inspired tab text
                icon: Icon(Icons.tab), // UI5-inspired tab icon
              ),
              Tab(
                text: 'Tab 2',
                icon: Icon(Icons.tab),
              ),
              Tab(
                text: 'Tab 3',
                icon: Icon(Icons.tab),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: sampleItems.length,
              itemBuilder: (context, index) {
                return UI5InspiredCard(itemText: sampleItems[index]);
              },
            ),
            Center(
              child: Text('Tab 2 Content'), // UI5-inspired tab content
            ),
            Center(
              child: Text('Tab 3 Content'), // UI5-inspired tab content
            ),
          ],
        ),
        bottomNavigationBar: UI5InspiredFooter(),
      ),
    );
  }
}

class UI5InspiredCard extends StatelessWidget {
  final String itemText;

  UI5InspiredCard({required this.itemText});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              itemText,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 8.0),
            Text(
              'Description of $itemText',
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

class UI5InspiredFooter extends StatelessWidget {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue[50], // UI5-inspired footer color
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home), // UI5-inspired home icon
                onPressed: () {
                  // Handle home button press
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications), // UI5-inspired notifications icon
                onPressed: () {
                  // Handle notifications button press
                },
              ),
              IconButton(
                icon: Icon(Icons.settings), // UI5-inspired settings icon
                onPressed: () {
                  // Handle settings button press
                },
              ),
            ],
          ),
          SizedBox(height: 16.0),
          Switch(
            value: _isSwitched,
            onChanged: (value) {
              // Handle switch toggle
              _isSwitched = value;
            },
          ),
          Text('UI5-Inspired Switch'), // UI5-inspired switch label
        ],
      ),
    );
  }
}
