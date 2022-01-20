import 'package:flutter/material.dart';
import 'package:cardprohect/pack/img.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 0;
  var index1 = 0;

  countLike() {
    setState(() {
      index += 1;
    });
  }

  counts() {
    setState(() {
      index1 += 1;
    });
  }

  countDisLike() {
    setState(() {
      index -= 1;
    });
  }

  List<String> imagesList = [
    "./images/images.jpeg",
    "./images/images2.jpeg",
    "./images/images3.jpeg",
    "./images/images4.jpeg"
  ];  
  /*List<Card> cardDetails=[
    CardDetail(image:Image(image:AssetImage("./images/images.jpeg")), )
  ] */

  

  

  List nameList = ["Employee1", "Employee2", "Employee3", "Employee4"];
  List desList = [
    "Flutter Developer",
    "Java Developer",
    "React Developer",
    "Angular Developer"
  ];
  List emailList = [
    "abc@gmail.com",
    "bcd@gmail.com",
    "cde@gmail.com",
    "def@gmail.com"
  ];



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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagesList[index]),
              radius: 50.0,
            ),
            SizedBox(height: 20),
            Divider(
              indent: 400,
              endIndent: 400,
              thickness: 3,
              color: Colors.green[900],
            ),

            SizedBox(height: 20),
            Text(
              "Name",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 20),
            Text(
              nameList[index],
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.green[900]),
            ),
            SizedBox(height: 20),
            Text(
              "Designation",
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 20),
            Text(
              desList[index],
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.green[900],
              ),
            ),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(width:420),

                Icon(
                  Icons.email,
                  color: Colors.amber,
                ),
                SizedBox(width: 10),
                Text(
                  emailList[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.green[900]),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "click here",
              style: TextStyle(
                  color: Colors.amber,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //SizedBox(width:450),
                TextButton(
                  onPressed: () {
                    counts();
                  },
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.amber,
                  ),
                ),

                //SizedBox(width:1),
                TextButton(
                    onLongPress: () {
                      countDisLike();
                    },
                    onPressed: () {
                      counts();
                    },
                    child: Text(
                      "$index1",
                      style: TextStyle(color: Colors.green[900]),
                    )),
              ],
            ),
            SizedBox(height: 20),
            TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {
                  countLike();
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.amber),
                )),

            //Image(image:AssetImage("./images/images.jpeg"),)
          ],
        ),
      ),
    );
  }
}
