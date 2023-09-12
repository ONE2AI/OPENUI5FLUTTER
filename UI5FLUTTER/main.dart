import 'package:flutter/material.dart';
import 'package:ui5_flutter/ui5_flutter.dart';
import 'user_controller.dart';
import 'user_list_view.dart';

void main() {
  runApp(UI5FLUTTER());
}

class UI5FLUTTER extends StatelessWidget {
  final UserController controller = UserController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI5FLUTTER',
      theme: UI5Theme.lightTheme,
      home: UserListView(controller: controller),
    );
  }
}
