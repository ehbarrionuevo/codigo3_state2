import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
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
