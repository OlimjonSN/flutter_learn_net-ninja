import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: OlimjonSnID(),
  ));
}

class OlimjonSnID extends StatefulWidget {
  const OlimjonSnID({Key? key}) : super(key: key);

  @override
  State<OlimjonSnID> createState() => _OlimjonSnIDState();
}

class _OlimjonSnIDState extends State<OlimjonSnID> {
  final double dataFontSize = 22;
  int lessonCalculate = 0;

  final double getDataFontSize = 14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          "Olimjon_SN",
          style: TextStyle(fontFamily: "Arima"),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("images/me.jpg"),
                  radius: 70,
                ),
              ),
              Divider(
                height: 55,
                color: Colors.grey[800],
              ),
              Text(
                "NAME",
                style: TextStyle(
                    fontSize: getDataFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Text(
                "Olimjon",
                style: TextStyle(
                    fontFamily: "Arima",
                    fontSize: dataFontSize,
                    color: Colors.amber),
              ),
              const SizedBox(height: 18),
              Text(
                "CURRENT FLUTTER LESSON",
                style: TextStyle(
                    fontSize: getDataFontSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              const SizedBox(height: 8),
              Text(
                "$lessonCalculate",
                style: TextStyle(
                    fontFamily: "Arima",
                    fontSize: dataFontSize,
                    color: Colors.amber),
              ),
              const SizedBox(height: 18),
              Text(
                "MY EMAIL",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: getDataFontSize,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.mail,
                    color: Color.fromARGB(255, 120, 164, 199),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "olimjonsn230@gmail.com",
                    style: TextStyle(
                        fontFamily: "Arima",
                        letterSpacing: 1.3,
                        color: Colors.amber,
                        fontWeight: FontWeight.bold,
                        fontSize: dataFontSize),
                  )
                ],
              ),
            ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        lessonCalculate--;
                      });
                    },
                    backgroundColor: Colors.grey[800],
                    child: const Icon(Icons.arrow_back_ios_rounded),
                  ),
                  FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          lessonCalculate++;
                        });
                      },
                      backgroundColor: Colors.grey[800],
                      child: const Icon(Icons.arrow_forward_ios_rounded)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
