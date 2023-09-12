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

class UI5FLUTTERHomePage extends StatelessWidget {
  void onMenuItemSelected(String value) {
    print('Selected menu item: $value');
    // Add your popup menu button interaction logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5FLUTTER'),
        actions: [
          UI5PopupMenuButton(
            itemBuilder: (context) => [
              UI5PopupMenuItem(
                value: 'Option 1',
                child: Text('Option 1'),
              ),
              UI5PopupMenuItem(
                value: 'Option 2',
                child: Text('Option 2'),
              ),
              UI5PopupMenuItem(
                value: 'Option 3',
                child: Text('Option 3'),
              ),
            ],
            onSelected: onMenuItemSelected,
          ),
        ],
      ),
      body: Center(
        child: Text('UI5FLUTTER Home Page'),
      ),
    );
  }
}
