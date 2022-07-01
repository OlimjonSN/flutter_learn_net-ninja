import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: const [Text("salom"), Text("dunyo")],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.amber,
              child: const Text("first container"),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.amber,
              child: const Text("second"),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.amber,
              child: const Text("third"),
            ),
          ]),
    );
  }
}
