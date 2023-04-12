import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    Expanded(
                      child: FlatButton(
                        color: Colors.pink,
                        onPressed: () {},
                        child: Text('0'),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    Expanded(
                      child: FlatButton(
                        color: Colors.red,
                        onPressed: () {},child: Text('1'),
                        ),
                    ),
                    Expanded(
                      child: FlatButton(
                        color: Colors.green,
                        onPressed: () {},child: Text('2'),
                        ),
                    ),
                    Expanded(
                      child: FlatButton(
                        color: Colors.blue,
                        onPressed: () {},child: Text('3'),
                        ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    Expanded(
                      child: FlatButton(
                        color: Colors.red,
                        onPressed: () {},child: Text('4'),
                        ),
                    ),
                    Expanded(
                      child: FlatButton(
                        color: Colors.green,
                        onPressed: () {},child: Text('5'),
                        ),
                    ),
                    Expanded(
                      child: FlatButton(
                        color: Colors.blue,
                        onPressed: () {},child: Text('6'),
                        ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    Expanded(
                      child: FlatButton(
                        color: Colors.red,
                        onPressed: () {},child: Text('7'),
                        ),
                    ),
                    Expanded(
                      child: FlatButton(
                        color: Colors.green,
                        onPressed: () {},child: Text('8'),
                        ),
                    ),
                    Expanded(
                      child: FlatButton(
                        color: Colors.blue,
                        onPressed: () {},child: Text('9'),
                        ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget> [
                    Expanded(
                      child: FlatButton(
                        color: Colors.pink,
                        onPressed: () {},
                        child: Text('10'),
                      ),
                    ),
                  ],
                ),
              ),
            ],),
        ),
       ),
    );
  }
}