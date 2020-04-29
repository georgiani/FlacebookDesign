import 'package:flutter/material.dart';
import '../model.dart';
import 'package:fbdesign/photoPreview/photoPreview.dart';

class StoryIcon extends StatelessWidget {
  final Color placeholderPhotoColor;
  final Color placeholderUserPicColor;

  StoryIcon({
    this.placeholderPhotoColor,
    this.placeholderUserPicColor,
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
                      bgColor: this.placeholderPhotoColor,
                      userName: "User Name",
                      textOfContent: "Quality Content",
                    ),
                  ),
                ),
                child: Container(
                  width: w,
                  height: 85 / 100 * h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: this.placeholderPhotoColor,
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
                      padding: const EdgeInsets.all(4),
                      child: ClipOval(
                        child: Container(
                          width: w / 3,
                          height: w / 3,
                          color: this.placeholderUserPicColor,
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
            "User Name",
            style: TextStyle(color: Colors.white, fontSize: 10),
          ),
        )
      ],
    );
  }
}
