import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'insta_stories.dart';
class MessageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    // TODO: implement build
    return new ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index)=> new ListTile(
          trailing: new IconButton(icon: new Icon(Icons.camera_alt), onPressed: ()=>print('he')),
          leading: new CircleAvatar(
            radius: 30,
            backgroundImage: new NetworkImage("https://media-exp1.licdn.com/dms/image/C4E03AQFIyRZ0bN_1PA/profile-displayphoto-shrink_200_200/0?e=1598486400&v=beta&t=rZ1y7M6cehpkKCej2MPJqwJBHeELAS_x0mqJREMAICg")),
          title: new Text("Lenvin Gonsalves"),
          subtitle: new Text("Shared a post 2 h"),
        )
    );
  }
}