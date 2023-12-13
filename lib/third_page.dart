import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  static const routeName = "third_page";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("3"),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Text("Hello"),
      ),
    );
  }
}
