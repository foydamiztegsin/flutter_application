import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                backgroundImage: AssetImage('images/1.jpg'),
                radius: 65.0,
              ),
              const Text('Ismailov Bunyod',
              style: TextStyle(color: Colors.white,
              fontSize: 40.0,
              fontFamily: 'OleoScript',
              ),
              ),
              const Text('Backend developer',
              style: TextStyle(color: Colors.white,
              fontSize: 20.0,
              fontFamily: 'OleoScript',
                ),
              ),
              const SizedBox(
                height: 30.0,
                width: 170.0,
                child: Divider(
                  color: Colors.tealAccent),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                // padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Row(
                    children: <Widget>[
                    Icon(Icons.phone,
                    color: Colors.teal
                    ),
                    SizedBox(width: 30.0),
                    Text('+998 93 994 46 68',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18.0
                      ),
                      ),
                  ]),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                // padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: Row(children: <Widget>[
                    Icon(Icons.mail, color: Colors.teal,),
                    SizedBox(width: 30.0),
                    Text('ismailovbunyod2018@gmail.com',
                    style: TextStyle(color: Colors.teal,fontSize: 18.0),)
                  ]),
                ),
              ),
            ],
            ),
      ),
      ),
      );
  }
}
