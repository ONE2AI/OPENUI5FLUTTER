import 'package:flutter/material.dart';
import 'package:ui5_flutter/ui5_flutter.dart';
import 'user_model.dart';

class UserListView extends StatelessWidget {
  final UserController controller;

  UserListView({this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: controller.users.length,
        itemBuilder: (context, index) {
          UserModel user = controller.users[index];
          return ListTile(
            title: Text(user.name),
            subtitle: Text('Age: ${user.age}, Email: ${user.email}'),
            trailing: UI5IconButton(
              icon: Icons.delete,
              onPressed: () => controller.deleteUser(index),
            ),
          );
        },
      ),
      floatingActionButton: UI5FAB(
        icon: Icons.add,
        onPressed: () => _showAddUserDialog(context),
      ),
    );
  }

  void _showAddUserDialog(BuildContext context) {
    String name;
    int age;
    String email;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add User'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UI5TextField(
                onChanged: (value) => name = value,
                placeholder: 'Name',
              ),
              UI5TextField(
                onChanged: (value) => age = int.parse(value),
                placeholder: 'Age',
              ),
              UI5TextField(
                onChanged: (value) => email = value,
                placeholder: 'Email',
              ),
            ],
          ),
          actions: [
            UI5TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Cancel'),
            ),
            UI5TextButton(
              onPressed: () {
                controller.addUser(name: name, age: age, email: email);
                Navigator.pop(context);
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
