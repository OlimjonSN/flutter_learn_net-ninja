import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text("hey Flutter"),
      centerTitle: true,
      backgroundColor: Colors.red[400],
    ),
    body: const Center(
      child: Text(
        "hey ninjas!",
        style: TextStyle(
          fontSize: 30,
          letterSpacing: 2.0,
          color: Colors.grey,
          fontFamily: 'TitanOne',
        ),
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      // ignore: sort_child_properties_last
      child: const Text('click'),
      backgroundColor: Colors.red[400],
    ),
  )));
}
