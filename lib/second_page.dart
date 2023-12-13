import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  static const routeName = "second_page";

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final TextEditingController _controller = TextEditingController();
  String userInput = "Click to See User Input";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Second Page"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          color: index.isEven ? Colors.purple : Colors.cyan,
          child: TextFormField(
            controller: _controller,
            style: TextStyle(color: index.isOdd ? Colors.purple : Colors.cyan),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: ElevatedButton(
          child: Text(userInput),
          onPressed: () {
            setState(() {
              userInput = _controller.text;
            });
          },
        ),
      ),
    );
  }
}
