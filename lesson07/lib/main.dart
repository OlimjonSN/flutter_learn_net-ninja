import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Test(),
  ));
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'hey ninja\'s',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}
