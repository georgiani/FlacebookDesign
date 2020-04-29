import 'package:flutter/material.dart';
import '../model.dart';
import 'package:fbdesign/photoPreview/photoPreview.dart';

class StoryIcon extends StatelessWidget {
  final String placeholderPhoto;
  final String userName;
  final String content;

  final Color bgColor;

  StoryIcon({
    this.placeholderPhoto,
    this.userName,
    this.content,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    // container over ListView is Height / 6
    double w = Global.screenWidth / 6;
    double h = Global.screenHeigth / 7;

    return Column(
      children: [
        Container(
          width: w,
          height: h,
          child: Stack(
            fit: StackFit.loose,
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (ctx) => FullPhoto(
                      photo: this.placeholderPhoto,
                      userName: this.userName,
                      textOfContent: this.content,
                      reactions: false,
                    ),
                  ),
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Image(
                      fit: BoxFit.contain,
                      image: AssetImage(this.placeholderPhoto),
                    ),
                  ),
                  width: w,
                  height: 85 / 100 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey[900]),
                    color: bgColor ?? Colors.orange[300],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ClipOval(
                  child: Container(
                    // behind photo
                    width: w / 2,
                    height: w / 2,
                    color: Colors.grey[900],
                    child: Padding(
                      padding: EdgeInsets.all(4),
                      child: ClipOval(
                        child: Container(
                          child: Icon(Icons.person),
                          decoration: BoxDecoration(color: Colors.grey[800]),
                          width: w / 3,
                          height: w / 3,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2),
          child: Text(
            this.userName,
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        )
      ],
    );
  }
}
