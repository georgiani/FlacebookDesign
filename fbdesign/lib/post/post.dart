import 'package:fbdesign/photoPreview/photoPreview.dart';
import 'package:flutter/material.dart';
import '../model.dart';

class PostCard extends StatelessWidget {
  final String placeholderPhoto;
  final String userName;

  PostCard({
    this.placeholderPhoto,
    this.userName,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      onDismissed: (direction) {
        Scaffold.of(Global.rootCtx).showSnackBar(
          SnackBar(
            content: Text("You deleted this post from your feed!"),
            backgroundColor: Colors.red[400],
            duration: Duration(seconds: 1),
          ),
        );
      },
      key: GlobalKey(),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[850],
          ),
          height: 3 * Global.screenHeigth / 10,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.fromLTRB(Global.leftIdentation, 10, 5, 5),
                    child: Center(
                      child: Container(
                        width: Global.screenWidth / 18,
                        height: Global.screenWidth / 18,
                        child: Icon(Icons.person, color: Colors.blueGrey,),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                    child: Text(this.userName,
                        style: TextStyle(color: Colors.grey[600])),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, Global.rightPadding, 5),
                    child: Text(
                      "5 min ago",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (ctx) => FullPhoto(
                        photo: this.placeholderPhoto,
                        userName: "User Name",
                        textOfContent: "Quality Content",
                        reactions: true,
                      ),
                    ),
                  ),
                  child: Container(
                    height: 3 * Global.screenHeigth / 16,
                    child: Image(
                      image: AssetImage(this.placeholderPhoto),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(Global.leftIdentation, 5, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
            ],
          ),
        ),
      ),
    );
  }
}
