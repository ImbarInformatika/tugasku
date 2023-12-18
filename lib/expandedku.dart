import 'package:flutter/material.dart';

class expandedku extends StatefulWidget {
  const expandedku({super.key});

  @override
  State<expandedku> createState() => _expandedkuState();
}

class _expandedkuState extends State<expandedku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Expanded"),
      ),
      body: Row(
        children: [
          Icon(Icons.arrow_back),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Checklist",
              style: TextStyle(fontSize: 30),
            ),
          )),
          Icon(
            Icons.check_box,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
