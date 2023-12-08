import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text(
            "Flutter Coding Exercise",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Click Here", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          child: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.home),
            onPressed: () {
              // print("Pressed!");
            },
          ),
        ),
      ),
    );
  }
}
