import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      margin: const EdgeInsets.symmetric(vertical: 7.0),
      child: const ListTile(
        title: Text(
          "Hola",
        ),
        subtitle: Text(
          "Mensaje",
        ),
        trailing: Icon(Icons.check),
        leading: CircleAvatar(),
      ),
    );
  }
}
