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
      debugShowCheckedModeBanner: false,
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
        MediaQuery.of(context).size.height;
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
                  profilePic: Image.asset("assets/images/user.png"),
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
                          placeholderPhoto: "assets/images/autumn.png",
                          userName: "John",
                          content: "Autumn photo! Love it 🥰",
                          bgColor: Colors.indigo,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhoto: "assets/images/bike.png",
                          userName: "Sean",
                          content: "Me and my bike! 🚴🏼‍♀️",
                          bgColor: Colors.lightGreen,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhoto: "assets/images/car.png",
                          userName: "Julia",
                          content: "Can't wait to go on holidays again 😍",
                          bgColor: Colors.purple,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhoto: "assets/images/farm.png",
                          userName: "Carlo",
                          content: "Photo of a farm!",
                          bgColor: Colors.teal,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhoto: "assets/images/home.png",
                          userName: "Tim",
                          content: "Keeping the house clean is important! 🦠",
                          bgColor: Colors.redAccent,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhoto: "assets/images/post.png",
                          userName: "Mark",
                          content: "Work!",
                          bgColor: Colors.brown,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                        child: StoryIcon(
                          placeholderPhoto: "assets/images/snow.png",
                          userName: "Dan",
                          content: "Can't wait for this winter",
                          bgColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 3 * Global.screenHeigth / 6,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    post.PostCard(
                      placeholderPhoto: "assets/images/car.png",
                      userName: "John",
                    ),
                    post.PostCard(
                      placeholderPhoto: "assets/images/post.png",
                      userName: "Connor",
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
