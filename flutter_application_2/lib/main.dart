import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.pink,
    appBar: AppBar(
      backgroundColor: Colors.pink,
      title: Text('Dicee'),
      ),
      body: Dicee(),
      ),
  ));
}



class Dicee extends StatefulWidget {
  const Dicee({ Key? key }) : super(key: key);

  @override
  State<Dicee> createState() => _DiceeState();
}

class _DiceeState extends State<Dicee> {

  int rasmlarraqami = 1;
  int rasmlarraqami2 = 6;

  void myfunk() {
    setState(() {
      rasmlarraqami2= Random().nextInt(6) + 1;
      rasmlarraqami= Random().nextInt(6) + 1;        
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          children: <Widget>[
            Expanded(child: FlatButton(onPressed: (){
              myfunk();
            },
            child: Image.asset('images/dice$rasmlarraqami.png'))),
            Expanded(child: FlatButton(onPressed: () {
              myfunk();
            },
            child: Image.asset('images/dice$rasmlarraqami2.png')))
          ],
      ),
    );
  }
}