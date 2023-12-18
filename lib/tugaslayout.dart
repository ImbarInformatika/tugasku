import 'package:flutter/material.dart';

class tugasku extends StatefulWidget {
  const tugasku({super.key});

  @override
  State<tugasku> createState() => _tugaskuState();
}

class _tugaskuState extends State<tugasku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('List View'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 30,
            color: Colors.brown,
            child: Text(
              "Item Pertama",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 30,
            color: Colors.brown,
            child: Text(
              "Item Kedua",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            width: 30,
            color: Colors.brown,
            child: Text(
              "Item Ketiga",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
