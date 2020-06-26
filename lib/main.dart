import 'package:flutter/material.dart';
import 'insta_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Instagram",
      debugShowCheckedModeBanner: false,
      home: new DefaultTabController(
          length: 3,
          initialIndex: 1,
          child: new InstaHome())
      ,
      theme: new ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color: Colors.black),
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.black, fontFamily: "Aveny")
        ),
          textTheme: TextTheme(
              headline6: TextStyle(color: Colors.black)
          )
      )
    );
  }
}