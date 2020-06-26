import 'package:flutter/material.dart';
import 'insta_list.dart';
import 'insta_chat.dart';
import 'insta_camera.dart';

class InstaBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        body: new DefaultTabController(
            length: 3,
            initialIndex: 1,
            child: new TabBarView(children: [
              new InstaCamera(),
              new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new AppBar(
                    backgroundColor: new Color(0xfff8faf8),
                    centerTitle: true,
                    elevation: 1.0,
                    leading: IconButton(
                        icon: new Icon(Icons.camera_alt),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InstaCamera()),
                          );
                        }),
                    title: SizedBox(
                      height: 35.0,
                      child: Image.asset("assets/images/insta_logo.png"),
                    ),
                    actions: <Widget>[
                      Padding(
                        padding: new EdgeInsets.only(right: 12.0),
                      ),
                      IconButton(
                          icon: new Icon(Icons.send),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => InstaChat()),
                            );
                          })
                    ],
                  ),
                  Flexible(child: InstaList())
                ],
              ),
              new InstaChat(),
            ])));
  }
}
