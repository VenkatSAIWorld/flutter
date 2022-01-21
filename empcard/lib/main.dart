import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 0;

  cardCount() {
    setState(() {
      index += 1;
    });
  }

  List<CardDetails> carddetails = [
    CardDetails(
      image: "./images/images.jpeg",
      name: "Employee1",
      designation: "Flutter Developer",
      email: "abc@gmail.com",
    ),
    CardDetails(
      image: "./images/images1.jpeg",
      name: "Employee2",
      designation: "Java Developer",
      email: "bcd@gmail.com",
    ),
    CardDetails(
      image: "./images/images2.jpeg",
      name: "Employee3",
      designation: "React Developer",
      email: "cde@gmail.com",
    ),
    CardDetails(
      image: "./images/images3.jpeg",
      name: "Employee4",
      designation: "Angular Developer",
      email: "def@gmail.com",
    )
  ];

  Widget cardDisplay(cd) {
    return Center(
      child: Card(
        color: Colors.amber,
        elevation: 2.0,
        margin: EdgeInsets.fromLTRB(26.0, 26, 26, 0),
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('${cd.image}'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${cd.name}',
                style: TextStyle(color: Colors.green[900]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${cd.designation}',
                style: TextStyle(color: Colors.green[900]),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '${cd.email}',
                style: TextStyle(color: Colors.green[900]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Card Details".toUpperCase(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.amber[500],
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Column(children: [
          cardDisplay(carddetails[index]),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green)),
            onPressed: () {
              cardCount() 
              < carddetails.length
                  ? cardCount()
                  : carddetails.map((cd) => cardDisplay(cd)).toList();
              // carddetails.elementAt(index);
            },
            child: Text("Next"),
          ),
        ]),
      ),
    );
  }
}

class CardDetails {
  String? image;
  String? name;
  String? designation;
  String? email;

  CardDetails({this.image, this.name, this.designation, this.email});
}




/*
List<CardDetails> cardDetails = [
  CardDetails(
    image: "./images/images.jpeg",
    name: "Employee1",
    designation: "Flutter Developer",
    email: "abc@gmail.com",
  ),
  CardDetails(
    image: "./images/images1.jpeg",
    name: "Employee2",
    designation: "Java Developer",
    email: "bcd@gmail.com",
  ),
  CardDetails(
    image: "./images/images2.jpeg",
    name: "Employee3",
    designation: "React Developer",
    email: "cde@gmail.com",
  ),
  CardDetails(
    image: "./images/images3.jpeg",
    name: "Employee4",
    designation: "Angular Developer",
    email: "def@gmail.com",
  )
];

*/
