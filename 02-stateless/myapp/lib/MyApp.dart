import 'package:flutter/material.dart';
import './MyCard.dart';
class MyApp extends StatelessWidget{
@override
Widget build(BuildContext context) {
  final double iconSize = 40.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards',style: TextStyle(color: Colors.indigo[900]),),
      ),
      body: Container(
       child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(title: Text('I love Flutter',style: TextStyle(fontSize: 18.0,color: Colors.blue[600])), icon: Icon(Icons.favorite, size: iconSize,
              color: Colors.indigo[700],)),
            MyCard(title: Text('I love Dart',style: TextStyle(fontSize: 18.0, color: Colors.green[600])), icon: Icon(Icons.favorite, size: iconSize,
              color: Colors.green[900],))
          ],
        ),
        )
      ),
    );
  }
}