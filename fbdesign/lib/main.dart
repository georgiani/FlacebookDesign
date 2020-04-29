import 'package:fbdesign/model.dart';
import 'package:fbdesign/post/post.dart' as post;
import 'package:fbdesign/topBar/topBar.dart';
import 'package:flutter/material.dart';
import 'status/status.dart';
import 'story/story.dart';

void main() {
  runApp(FB());
}

class FB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FBBody(),
      ),
    );
  }
}

class FBBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Global.notchInset = MediaQuery.of(context).padding;
    Global.screenWidth = MediaQuery.of(context).size.width;
    Global.screenHeigth =
        MediaQuery.of(context).size.height - Global.notchInset.top;
    Global.leftIdentation = Global.screenWidth / 30;
    Global.rightPadding = Global.screenWidth / 30;
    Global.rootCtx = context;

    return Container(
      color: Colors.grey[900],
      child: SafeArea(
        
        child: Scaffold(
          backgroundColor: Colors.grey[900],
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, Global.rightPadding, 10),
                child: TopBar(),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                child: Status(
                  h: 50,
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(Global.leftIdentation, 10, 0, 10),
                child: Container(
                  height: Global.screenHeigth / 6,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhotoColor: Colors.indigo,
                          placeholderUserPicColor: Colors.orange,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhotoColor: Colors.amberAccent,
                          placeholderUserPicColor: Colors.lightGreen,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhotoColor: Colors.lime,
                          placeholderUserPicColor: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhotoColor: Colors.teal,
                          placeholderUserPicColor: Colors.brown,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhotoColor: Colors.indigo,
                          placeholderUserPicColor: Colors.orange,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhotoColor: Colors.amberAccent,
                          placeholderUserPicColor: Colors.lightGreen,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhotoColor: Colors.lime,
                          placeholderUserPicColor: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhotoColor: Colors.teal,
                          placeholderUserPicColor: Colors.brown,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 3 * Global.screenHeigth / 5.2,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    post.PostCard(
                      placeholderPhotoColor: Colors.teal,
                    ),
                    post.PostCard(
                      placeholderPhotoColor: Colors.yellow,
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
