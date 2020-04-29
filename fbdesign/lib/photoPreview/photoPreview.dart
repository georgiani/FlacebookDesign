import 'package:flutter/material.dart';

import '../model.dart';

class FullPhoto extends StatelessWidget {
  final Color bgColor;
  final String userName;
  final String textOfContent;

  FullPhoto({
    this.bgColor,
    this.userName,
    this.textOfContent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: this.bgColor,
      body: Align(
        alignment: Alignment.bottomLeft,
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, Global.notchInset.bottom),
          child: ListTile(
            title: Text(
              this.userName,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              this.textOfContent,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}