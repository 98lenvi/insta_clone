import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'message_list.dart';

class InstaChat extends StatelessWidget{
  final topBar = new AppBar(
    backgroundColor: new Color(0xfff8faf8),
    elevation: 1.0,
    leading: new Icon(Icons.arrow_back),
    title: new Text("lenvingonsalves", style: new TextStyle(
      fontFamily: "Roboto"
    ),),
    actions: <Widget>[
      Padding(
        padding: new EdgeInsets.only(right: 12.0),
      ),
      IconButton(icon: new Icon(Icons.videocam), onPressed: null),
      IconButton(icon: new Icon(Icons.open_in_new), onPressed: null)
    ],
  );

  final searchBar = new Padding(padding: new EdgeInsets.all(16.0),
  child:   new TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(),
        prefixText: 'Search',
      prefixIcon: new Icon(Icons.search),
      isDense: true
    ),
  ),
  )
;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        topBar,
        searchBar,
        new Padding(
            padding: new EdgeInsets.only(left:16.0, top: 8.0, bottom: 8.0),
            child:
            new Text(
                "Messages",
              style: new TextStyle(fontWeight: FontWeight.bold),
            ),
        ),
        Expanded(child: MessageList())
      ],
    );
  }
}