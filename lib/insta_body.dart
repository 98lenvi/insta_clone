import 'package:flutter/material.dart';
import 'insta_list.dart';

class InstaBody extends StatelessWidget{
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    centerTitle: true,
    elevation: 1.0,
    leading: new Icon(Icons.camera_alt),
    title: SizedBox(
      height: 35.0,
      child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: <Widget>[
      Padding(
        padding: new EdgeInsets.only(right: 12.0),
      ),
      IconButton(icon: new Icon(Icons.send), onPressed: null)
    ],
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        topBar,
        Flexible(child: InstaList())
      ],
    );
  }
}