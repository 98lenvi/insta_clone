import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'insta_stories.dart';
class InstaList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    // TODO: implement build
    return new ListView.builder(
        itemCount: 5,
        itemBuilder: (context,index)=> index == 0 ? new SizedBox(
      child: new InstaStories(),
          height: deviceSize.height * 0.16,
    ) : Column(
      mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: new BoxDecoration(
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.fill,
                              image: new NetworkImage(
                                  "https://media-exp1.licdn.com/dms/image/C4E03AQFIyRZ0bN_1PA/profile-displayphoto-shrink_200_200/0?e=1598486400&v=beta&t=rZ1y7M6cehpkKCej2MPJqwJBHeELAS_x0mqJREMAICg"
                              )),
                          
                        ),

                      ),
                      new SizedBox(
                        width: 10.0,
                      ),
                      new Text("lenvingonsalves",
                      style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  new IconButton(icon: Icon(Icons.more_vert), onPressed: null)
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: new Image(
                  image: new NetworkImage("https://i.pinimg.com/originals/be/fe/f0/befef097ad9693aa220123560cbc89d2.jpg"),
                  fit: BoxFit.fill,
              )
            ),
            new Padding(padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Icon(
                      FontAwesomeIcons.heart,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(
                      FontAwesomeIcons.comment,
                    ),
                    new SizedBox(
                      width: 16.0,
                    ),
                    new Icon(FontAwesomeIcons.paperPlane),
                  ],
                ),
                new Icon(FontAwesomeIcons.bookmark)
              ],
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Liked by pawankumar, pk and 528,331 others",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                          fit: BoxFit.fill,
                          image: new NetworkImage(
                              "https://pbs.twimg.com/profile_images/916384996092448768/PF1TSFOE_400x400.jpg")),
                    ),
                  ),
                  new SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: new TextField(
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "Add a comment...",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:
              Text("1 Day Ago", style: TextStyle(color: Colors.grey)),
            )
          ],
        ),
    );
  }
}