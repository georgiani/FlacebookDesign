import 'package:fbdesign/photoPreview/photoPreview.dart';
import 'package:flutter/material.dart';
import '../model.dart';

class PostCard extends StatelessWidget {
  final Color placeholderPhotoColor;

  PostCard({
    this.placeholderPhotoColor,
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
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.grey[850],
          ),
          height: 3 *  Global.screenHeigth / 10,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(Global.leftIdentation, 10, 5, 5),
                    child: ClipOval(
                      child: Container(
                        width: Global.screenWidth / 18,
                        height: Global.screenWidth / 18,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 10, 5, 5),
                    child: Text("User Name", style: TextStyle(color: Colors.grey[600])),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, Global.rightPadding, 5),
                    child: Text("5 min ago", style: TextStyle(color: Colors.grey[600]),),
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
                      bgColor: this.placeholderPhotoColor,
                      userName: "User Name",
                      textOfContent: "Quality Content",
                    ),
                  ),
                ),
                  child: Container(
                    height: 3 * Global.screenHeigth / 15,
                    color: this.placeholderPhotoColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}