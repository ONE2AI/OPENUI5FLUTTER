import 'package:flutter/material.dart';
import 'package:ui5flutter/elements/expanded_example.dart';
import 'package:ui5flutter/elements/typography_example.dart';

class UI5InspiredHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UI5 Inspired App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ExpandedExample(),
          TypographyExample(),
        ],
      ),
    );
  }
}
