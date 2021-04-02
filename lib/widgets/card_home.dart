import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  String activity_name;
  String activity_dificulty;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, right: 22.0),
      child: Container(
        constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width * 0.9,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.height * 0.6,
            minHeight: MediaQuery.of(context).size.height * 0.6),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(2.0)),
        child: Stack(
          children: <Widget>[
            new Positioned(
                top: MediaQuery.of(context).size.height * 0.2,
                left: 30.0,
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text(
                      activity_name,
                      style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: MediaQuery.of(context).size.width * 0.05),
                    ),
                    new Row(
                      children: <Widget>[
                        new Text(
                          "Difficulty: ",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05),
                        ),
                        new Text(
                          activity_dificulty,
                          style: TextStyle(
                              color: Colors.green,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05),
                        )
                      ],
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  CardHome({@required this.activity_name, @required this.activity_dificulty});
}
