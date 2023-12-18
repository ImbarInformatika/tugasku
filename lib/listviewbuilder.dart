import 'package:flutter/material.dart';

class viewbuilder extends StatefulWidget {
  const viewbuilder({super.key});

  @override
  State<viewbuilder> createState() => _viewbuilderState();
}

class _viewbuilderState extends State<viewbuilder> {
  final int hitung = 10;
  List<bool> items = [];
  void iniState() {
    setState(() {
      for (var i = 0; i < this.hitung; i++) {
        items.add(false);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Builder"),
      ),
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text("Item ${index + 1}"),
          trailing: Icon(Icons.person),
          onTap: () {
            print("Anda Memilih item ${index + 1}");
          },
        );
      }),
    );
  }
}
