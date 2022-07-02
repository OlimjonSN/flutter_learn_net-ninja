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
      body: Row(children: [
        Expanded(flex: 3, child: Image.asset('images/codeschool.png')),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(30),
            color: Colors.cyan,
            child: const Text('1'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(30),
            color: Colors.pink,
            child: const Text('2'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(30),
            color: Colors.amber,
            child: const Text('3'),
          ),
        ),
      ]),
    );
  }
}
