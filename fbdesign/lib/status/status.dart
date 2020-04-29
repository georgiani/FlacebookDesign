import 'package:fbdesign/model.dart';
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  final double h;
  final Image profilePic;

  Status({
    this.h,
    this.profilePic,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.h,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(Global.leftIdentation, 0, 10, 0),
            child: ClipOval(
              child: Container(
                child: Icon(Icons.person),
                width: this.h,
                height: this.h,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                ),
              ),
            ),
          ),
          Text(
            "What's on your mind?",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }
}
