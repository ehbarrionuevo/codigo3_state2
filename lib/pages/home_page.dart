import 'package:codigo3_state2/widgets/item_list_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              // children: List.generate(8, (index) => ItemListWidget()),
              children: [
                const Text(
                  "Lista general",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                ...List.generate(3, (index) => ItemListWidget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
