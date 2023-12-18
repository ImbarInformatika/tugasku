import 'package:flutter/material.dart';

class listviewdenganloop extends StatefulWidget {
  const listviewdenganloop({super.key});

  @override
  State<listviewdenganloop> createState() => _listviewdenganloopState();
}

class _listviewdenganloopState extends State<listviewdenganloop> {
  List<Widget> tambahitem(int count) {
    List<Widget> items = [];
    for (var i = 0; i < count; i++) {
      items.add(ListTile(
        title: Text("Item ${i + 1}"),
        leading: Icon(Icons.person),
        trailing: Icon(Icons.delete),
      ));
      items.add(Divider(
        color: Colors.blue,
      ));
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View dengan Loop"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: tambahitem(30),
      ),
    );
  }
}
