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
  bool isExpanded = false;

  void onExpansionChanged(bool value) {
    setState(() {
      isExpanded = value;
      print('Expansion panel state: $value');
      // Add your expansion panel interaction logic here
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5FLUTTER'),
      ),
      body: Center(
        child: UI5ExpansionPanel(
          isExpanded: isExpanded,
          headerBuilder: (context, isExpanded) => ListTile(
            title: Text('Expandable Panel'),
            trailing: UI5Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Expanded Content Here'),
          ),
          onExpansionChanged: onExpansionChanged,
        ),
      ),
    );
  }
}
