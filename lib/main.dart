import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[50],
        appBar: AppBar(
          title: Text('I am Poor'),
          backgroundColor: Colors.tealAccent[700]
        ),
        body: Center(
          child: Image(
            image: NetworkImage('https://static.thenounproject.com/png/213892-200.png')
          )
        )
      )
    );
  }
}