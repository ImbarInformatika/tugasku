import 'package:flutter/material.dart';

class stactku extends StatefulWidget {
  const stactku({super.key});

  @override
  State<stactku> createState() => _stactkuState();
}

class _stactkuState extends State<stactku> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Penggunaan Stack"),
      ),
      body: const Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(
              Icons.shopping_cart,
              size: 50,
            ),
            Positioned(
              top: -4.0,
              right: -4.0,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red,
                child: Text(
                  "10",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
