import 'package:flutter/material.dart';

class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;
  MyCard({this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            this.title, this.icon
          ],
        ),
      ),
    )
    );
  }

}