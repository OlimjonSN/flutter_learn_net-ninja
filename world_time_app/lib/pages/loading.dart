// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:world_time_app/service/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  String time = 'loading page';
  void setupWordTime() async {
    WorldTime instance = WorldTime(
        location: 'Uzbekiston', flag: "uzbekiston.png", url: 'Asia/Tashkent');

    await instance.getTime();
    print(instance.time);
    setState(() {
      time = instance.time as String;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWordTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(50.0),
      child: Text(time),
    ));
  }
}
