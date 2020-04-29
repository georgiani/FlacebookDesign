import 'package:fbdesign/model.dart';
import 'package:fbdesign/notifications/notifications.dart';
import 'package:fbdesign/topBar/topBarIcons.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(Global.leftIdentation, 0, 0, 0),
          child: fbLogo,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Container(
                  width: 35,
                  height: 35,
                  color: Global.searchColor,
                  child: Center(
                    child: IconButton(
                      iconSize: 20,
                      icon: searchIcon,
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Container(
                  width: 35,
                  height: 35,
                  color: Global.notificationColor,
                  child: Center(
                    child: IconButton(
                      iconSize: 20,
                      icon: notificationIcon,
                      onPressed: () {
                        showDialog(
                          context: Global.rootCtx,
                          child: NotificationsDialog(),
                        );
                      },
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipOval(
                child: Container(
                  width: 35,
                  height: 35,
                  color: Global.peopleColor,
                  child: Center(
                    child: IconButton(
                      iconSize: 20,
                      icon: peopleIcon,
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
              child: ClipOval(
                child: Container(
                  width: 35,
                  height: 35,
                  color: Global.messagesColor,
                  child: Center(
                    child: IconButton(
                      iconSize: 20,
                      icon: messagesIcon,
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
