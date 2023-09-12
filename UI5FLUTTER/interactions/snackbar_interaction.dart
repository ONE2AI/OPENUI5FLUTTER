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
  void showSnackbar(BuildContext context) {
    final snackbar = UI5SnackBar(
      content: Text('This is a SnackBar!'),
      duration: Duration(seconds: 3),
      action: UI5SnackBarAction(
        label: 'Dismiss',
        onPressed: () {
          print('SnackBar dismissed!');
          // Add your snackbar interaction logic here
        },
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5FLUTTER'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => showSnackbar(context),
          child: Text('Show SnackBar'),
        ),
      ),
    );
  }
}
