import 'package:flutter/material.dart';

class listviewbiner extends StatefulWidget {
  const listviewbiner({super.key});

  @override
  State<listviewbiner> createState() => _listviewbinerState();
}

class _listviewbinerState extends State<listviewbiner> {
  List<Widget> categories(int count) {
    List<Widget> items = [];
    for (var i = 0; i < count; i++) {
      items.add(ListTile(
        title: Center(child: Text("Kategori ${i + 1}")),
        leading: Icon(Icons.person),
        trailing: Icon(Icons.delete),
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
      ));
      if (i < count - 1) {
        // Tambahkan SizedBox hanya jika bukan item terakhir
        items.add(
            SizedBox(height: 100)); // Sesuaikan tinggi jarak sesuai kebutuhan
      }
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("biner - ListView"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemExtent: 120,
                padding: EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                      child: Center(child: Text("Horizontal Item $index")),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 500,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemExtent: 60,
                padding: EdgeInsets.symmetric(vertical: 20),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                      ),
                      child: Center(child: Text("Vertical Item $index")),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
