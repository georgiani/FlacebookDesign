import 'package:flutter/material.dart';

import '../model.dart';

class FullPhoto extends StatelessWidget {
  final String photo;
  final String userName;
  final String textOfContent;
  bool reactions = false;

  FullPhoto({
    this.photo,
    this.userName,
    this.textOfContent,
    this.reactions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            width: Global.screenWidth,
            height: Global.screenHeigth,
            color: Colors.grey[900],
            child: Image(
              image: AssetImage(this.photo),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, Global.notchInset.bottom),
            child: ListTile(
              title: Text(
                this.userName,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                this.textOfContent,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        this.reactions ? Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.fromLTRB(Global.rightPadding, 0, 0, Global.notchInset.bottom),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Icon(
                      Icons.thumb_up,
                      color: Colors.greenAccent,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Icon(
                      Icons.thumb_down,
                      color: Colors.redAccent,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red[800],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ) : Container(),
      ]),
    );
  }
}
