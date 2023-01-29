import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  String userName;
  String role;
  ItemListWidget({
    required this.userName,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      margin: const EdgeInsets.symmetric(vertical: 7.0),
      child: ListTile(
        title: Text(
          userName,
        ),
        subtitle: Text(
          "Rol: $role",
        ),
        trailing: const Icon(Icons.check),
        leading: const CircleAvatar(),
      ),
    );
  }
}
