import 'package:flutter/material.dart';
import "dart:ui" show lerpDouble;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[700],
          title: Ev("Electric Vehicle Charging Station",
              iconn: Icons.fire_hydrant),
        ),
        //Text("charging station"),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Ev("Type of Vehicle", iconn: Icons.car_rental),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                  onPressed: () {},
                  child: Ev("2 Wheeler", iconn: Icons.electric_bike),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.grey)),
                  onPressed: () {},
                  child: Ev("4 wheeler", iconn: Icons.car_rental_outlined),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {}, child: Ev("Search", iconn: Icons.search)),
            SizedBox(
              height: 20,
            ),
            textfield(),
            Ev("Nearest Station"),
            SizedBox(
              height: 20,
            ),
            Ev("Charging", iconn: Icons.charging_station_rounded),
            SizedBox(
              height: 20,
            ),
            Ev("Duration"),
            SizedBox(
              height: 20,
            ),
            Ev("Cost"),
          ],
        ),
      ),
    );
  }

  Widget Ev(text, {iconn = null}) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(
        text,
        style: TextStyle(
            color: Colors.grey[1000],
            fontSize: 18,
            fontWeight: FontWeight.bold,
            shadows: [
              // ignore: prefer_const_constructors
              Shadow(
                  offset: Offset.infinite, color: Colors.red, blurRadius: 0.8)
            ]),
        textAlign: TextAlign.center,
      ),
      SizedBox(
        width: 5,
      ),
      Icon(
        iconn,
        color: Colors.red[1000],
      ),
    ]);
  }
}

class textfield extends StatelessWidget {
  const textfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: TextField(
      decoration: InputDecoration(
        hintText: "Enter your location",
      ),
      textAlign: TextAlign.center,
      maxLength: 25,
    ));
  }
}
