import 'package:flutter/material.dart';
import 'insta_body.dart';
import 'insta_chat.dart';
class InstaHome extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body:
        new InstaBody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        child: new BottomAppBar(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              new IconButton(icon: new Icon(Icons.home), onPressed: ()=>{}),
              new IconButton(icon: new Icon(Icons.search), onPressed: null),
              new IconButton(icon: new Icon(Icons.add_box), onPressed: null),
              new IconButton(icon: new Icon(Icons.favorite), onPressed: null),
              new IconButton(icon: new Icon(Icons.perm_contact_calendar), onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}