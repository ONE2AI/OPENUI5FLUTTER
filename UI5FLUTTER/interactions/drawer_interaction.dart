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
    // Add your drawer menu item interaction logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5FLUTTER'),
      ),
      drawer: UI5Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UI5DrawerHeader(
              title: Text('Welcome!'),
            ),
            UI5DrawerItem(
              icon: Icons.home,
              title: Text('Home'),
              onTap: () => onMenuItemSelected('Home'),
            ),
            UI5DrawerItem(
              icon: Icons.settings,
              title: Text('Settings'),
              onTap: () => onMenuItemSelected('Settings'),
            ),
            UI5DrawerItem(
              icon: Icons.help,
              title: Text('Help'),
              onTap: () => onMenuItemSelected('Help'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('UI5FLUTTER Home Page'),
      ),
    );
  }
}
