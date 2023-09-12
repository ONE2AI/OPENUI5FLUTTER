import 'package:flutter/material.dart';
import 'package:ui5_flutter/ui5_flutter.dart';
import 'user_model.dart';

class UserController {
  List<UserModel> users = [
    UserModel(name: 'John Doe', age: 30, email: 'john@example.com'),
    UserModel(name: 'Jane Smith', age: 28, email: 'jane@example.com'),
    UserModel(name: 'Michael Johnson', age: 35, email: 'michael@example.com'),
  ];

  void addUser({String name, int age, String email}) {
    users.add(UserModel(name: name, age: age, email: email));
  }

  void deleteUser(int index) {
    users.removeAt(index);
  }
}
