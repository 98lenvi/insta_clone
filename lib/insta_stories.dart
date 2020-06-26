import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget{

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      new Text("Stories",style: new TextStyle(fontWeight: FontWeight.bold),),
      new Row(
        children: <Widget>[
          new Icon(Icons.play_arrow),
          new Text("Watch All", style: new TextStyle(fontWeight: FontWeight.bold),)
        ],
      )
    ],
  );

  final stories = new Expanded(
    child: new ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context,index)=> new Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          new Container(
            width: 60.0,
            height: 60.0,
            decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                fit: BoxFit.fill,
                  image: new NetworkImage(
                  "https://media-exp1.licdn.com/dms/image/C4E03AQFIyRZ0bN_1PA/profile-displayphoto-shrink_200_200/0?e=1598486400&v=beta&t=rZ1y7M6cehpkKCej2MPJqwJBHeELAS_x0mqJREMAICg")
              ),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          index == 0 ? Positioned(
            right: 10.0,
            child: CircleAvatar(
              backgroundColor: Colors.blueAccent,
              radius: 10.0,
              child: new Icon(Icons.add, size: 16.0,)
            )
            ,
          ) : new Container(),
        ],
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      margin: const EdgeInsets.all(16.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          topText,
          stories
        ],
      )
    );
  }
}