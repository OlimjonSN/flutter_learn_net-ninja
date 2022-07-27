import 'package:flutter/material.dart';
import 'package:world_time_app/service/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'London', flag: "england.png", url: 'Europe/London'),
    WorldTime(
        location: 'NewYork', flag: "america.png", url: 'America/New_York'),
    WorldTime(location: 'Paris', flag: "french.png", url: 'Europe/Paris'),
    WorldTime(location: 'Moscow', flag: "russian.png", url: 'Europe/Moscow'),
    WorldTime(
        location: 'Tashkent', flag: "uzbekiston.png", url: 'Asia/Tashkent'),
    WorldTime(location: 'Madrid', flag: "italy.png", url: 'Europe/Madrid'),
    WorldTime(location: 'Istanbul', flag: "turkey.png", url: 'Europe/Istanbul'),
    WorldTime(
        location: 'Atlantic',
        flag: "gruzia.jpg",
        url: 'Atlantic/South_Georgia'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: const Text('choose location'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                  child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location as String),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('images/${locations[index].flag}'),
                ),
              )),
            );
          }),
    );
  }
}
