import 'package:codigo3_state2/widgets/item_list_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
            ItemListWidget(),
          ],
        ),
      ),
    );
  }
}
