import 'package:codigo3_state2/widgets/item_list_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map> users = [
    {
      "username": "Angelo",
      "role": "Admin",
    },
    {
      "username": "Mitchell",
      "role": "Jefe de Proyectos",
    },
    {
      "username": "Christian",
      "role": "Admin",
    },
  ];

  String username = "";
  String superheroValue = "A";

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
                TextField(
                  decoration: const InputDecoration(
                    hintText: "Ingresar nombre...",
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (String value) {
                    username = value;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                DropdownButton(
                  value: superheroValue,
                  items: [
                    DropdownMenuItem(
                      value: "A",
                      child: Text("Batman"),
                    ),
                    DropdownMenuItem(
                      value: "B",
                      child: Text("Superman"),
                    ),
                    DropdownMenuItem(
                      value: "C",
                      child: Text("Flash"),
                    ),
                    DropdownMenuItem(
                      value: "D",
                      child: Text("Wonder Woman"),
                    ),
                  ],
                  onChanged: (String? value) {
                    superheroValue = value!;
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                MaterialButton(
                  child: Text(
                    "Guardar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.indigo,
                  onPressed: () {
                    Map data = {
                      "username": username,
                      "role": "Admin",
                    };

                    users.add(data);
                    setState(() {});
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Lista general",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                ...List.generate(
                  users.length,
                  (index) => ItemListWidget(
                    userName: users[index]["username"],
                    role: users[index]["role"],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
