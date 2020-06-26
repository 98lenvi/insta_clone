import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'message_list.dart';
import 'insta_body.dart';

class InstaCamera extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new DefaultTabController(
        length: 2,
        initialIndex: 0,
        child: new TabBarView(children: [
       new Center(
         child: new Text('Camera'),
       ),
          new InstaBody(),
        ])));
  }
}