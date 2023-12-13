import 'package:flutter/material.dart';

import 'second_page.dart';
import 'third_page.dart';

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
      home: const MyScaffoldApp(),
      routes: {
        SecondPage.routeName: (_) => const SecondPage(),
        ThirdPage.routeName: (_) => const ThirdPage()
      },
    );
  }
}

class MyScaffoldApp extends StatefulWidget {
  const MyScaffoldApp({super.key});

  @override
  State<MyScaffoldApp> createState() => _MyScaffoldAppState();
}

class _MyScaffoldAppState extends State<MyScaffoldApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).pushNamed(SecondPage.routeName);
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: const Text("Click Here",
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Row(
          children: [
            const Spacer(),
            IconButton(
              color: Colors.white,
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).pushNamed(ThirdPage.routeName);
              },
            ),
            const Spacer(),
            IconButton(
              color: Colors.white,
              icon: const Icon(Icons.navigate_next_rounded),
              onPressed: () {
                Navigator.of(context).pushNamed(SecondPage.routeName);
              },
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}




// body: Column(
//           mainAxisAlignment: counter == 0 ? MainAxisAlignment.start : counter == 1 ? MainAxisAlignment.center : MainAxisAlignment.end,
//           children: [
//             Row(
//           mainAxisAlignment: counter == 0 ? MainAxisAlignment.start : counter == 1 ? MainAxisAlignment.center : MainAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         counter < 2 ? counter++ : counter = 0;
//                       });
//                     },
//                     child: const Text("Elevated Button"),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),



               // SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       Image.asset("images/sky.jpg"),
        //       Image.network(
        //           "https://ichef.bbci.co.uk/news/976/cpsprodpb/16620/production/_91408619_55df76d5-2245-41c1-8031-07a4da3f313f.jpg.webp"),
        //       Image.asset("images/sky.jpg"),
        //     ],
        //   ),
        // ),
        //
        //