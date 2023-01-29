import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  String userName;
  ItemListWidget({required this.userName});

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
          "Mensaje",
        ),
        trailing: Icon(Icons.check),
        leading: CircleAvatar(),
      ),
    );
  }
}
