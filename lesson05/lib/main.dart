import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text("hey Flutter"),
      centerTitle: true,
    ),
    body: const Center(
      child: Text("hey ninjas!"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Text('click'),
    ),
  )));
}
