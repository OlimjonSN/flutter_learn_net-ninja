// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:world_time_app/service/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWordTime() async {
    WorldTime instance = WorldTime(
        location: 'England', flag: "uzbekiston.png", url: 'Europe/London');

    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime
    });
  }

  @override
  void initState() {
    super.initState();
    setupWordTime();
  }

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue,
          body: SpinKitFadingCircle(
            color: Colors.white,
            size: 50.0,
          )),
    );
  }
}
