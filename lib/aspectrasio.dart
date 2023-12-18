import 'package:flutter/material.dart';

class aspectrasio extends StatefulWidget {
  const aspectrasio({super.key});

  @override
  State<aspectrasio> createState() => _aspectrasioState();
}

class _aspectrasioState extends State<aspectrasio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Penggunaan Aspect Rasio"),
      ),
      body: AspectRatio(
        aspectRatio: 180 / 240,
        child: Container(
          color: Colors.blue[100],
          child: Text(
              style: TextStyle(color: Colors.black, fontSize: 36),
              "Isi Kontainer"),
        ),
      ),
    );
  }
}
