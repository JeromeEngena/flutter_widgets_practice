import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("images/sky.jpg"),
              Image.network(
                  "https://ichef.bbci.co.uk/news/976/cpsprodpb/16620/production/_91408619_55df76d5-2245-41c1-8031-07a4da3f313f.jpg.webp"),
              Image.asset("images/sky.jpg"),
            ],
          ),
        ),
        //
        //
        // Column(
        //   children: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: ElevatedButton(
        //         onPressed: () {

        //         },
        //         style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        //         child: const Text("Click Here",
        //             style: TextStyle(color: Colors.white)),
        //       ),
        //     ),
        //   ],
        // ),
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
