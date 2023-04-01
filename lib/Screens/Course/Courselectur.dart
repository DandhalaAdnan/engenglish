// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dynamic_size/Size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Routes.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:engenglish/Globals/my_flutter_app_icons.dart';
import 'package:engenglish/Screens/DashBoard/Tabs/Courselist.dart';
import 'package:flutter/material.dart';

class CourseLacture extends StatefulWidget {
  const CourseLacture({Key? key}) : super(key: key);

  @override
  State<CourseLacture> createState() => _CourseLactureState();
}

class _CourseLactureState extends State<CourseLacture>
    with TickerProviderStateMixin {
  late dynamicsize s;
  late PageController tb = PageController(initialPage: 0);
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    s = dynamicsize(context, 844, 390);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/video.png",
                height: s.h(216),
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Courselist(),
                      ));
                },
                child: Icon(
                  MyFlutterApp.polygon_3,
                  color: Colors.white.withOpacity(0.6),
                  size: 50,
                ),
              )
            ],
          ),
          s.HeightSpace(17),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: s.w(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Android : Learn Android With ENG",
                    style: Boldblack16,
                  ),
                  Text(
                    "By: Mehwish",
                    style: Boldblack16.copyWith(color: Color(0xFFC9C9C9)),
                  ),
                  s.HeightSpace(16),
                  TabBar(
                    controller: _tabController,
                    padding: EdgeInsets.only(right: s.w(100)),
                    tabs: [
                      Tab(
                          child: Text(
                        "Lectures",
                        style: Boldblack16,
                        overflow: TextOverflow.ellipsis,
                      )),
                      Tab(
                          child: Text(
                        "More",
                        style: Boldblack16,
                        overflow: TextOverflow.ellipsis,
                      )),
                    ],
                  ),
                  Expanded(
                    child: PageView(
                      pageSnapping: true,
                      allowImplicitScrolling: true,
                      controller: tb,
                      children: [_firstPage(), _firstPage()],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  _firstPage() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _Lacturerow(),
          s.HeightSpace(5),
          _Lacturerow(),
          s.HeightSpace(5),
          _Lacturerow(),
        ],
      ),
    );
  }

  _Lacturerow() {
    return Container(
      padding: EdgeInsets.only(right: s.w(20)),
      child: Column(
        children: [
          s.HeightSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Lecture 1",
                style: Boldblack16,
              ),
              Icon(
                MyFlutterApp.download,
                size: 20,
              )
            ],
          ),
          _Sectionrow(),
          _Sectionrow(),
          _Quizrow()
        ],
      ),
    );
  }

  _Quizrow() {
    return InkWell(
      onTap: () {
        routes().GotoQuiz(context);
      },
      child: Container(
        padding: EdgeInsets.only(left: s.w(20), top: 5),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Quiz",
                    style: perplr14,
                  ),
                  Text(
                    "Questions : 40,   Time: 40 Min",
                    style: perplr14.copyWith(color: Color(0xFFC6C6C6)),
                  )
                ],
              ),
            ),
            // Icon(
            //   MyFlutterApp.download,
            //   color: ApplicationColors.withOpacity(0.4),
            //   size: 20,
            // )
          ],
        ),
      ),
    );
  }

  _Sectionrow() {
    return Container(
      padding: EdgeInsets.only(left: s.w(20), top: 5),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Section 1",
                  style: perplr14,
                ),
                Text(
                  "video: 35 min",
                  style: perplr14.copyWith(color: Color(0xFFC6C6C6)),
                )
              ],
            ),
          ),
          Icon(
            MyFlutterApp.download,
            color: ApplicationColors.withOpacity(0.4),
            size: 20,
          )
        ],
      ),
    );
  }
}
