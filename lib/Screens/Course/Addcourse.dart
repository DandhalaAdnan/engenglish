import 'package:dynamic_size/Size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Constant.dart';
import 'package:engenglish/Globals/Expansiotile.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:engenglish/Globals/my_flutter_app_icons.dart';
import 'package:engenglish/Screens/Course/demo.dart';
import 'package:flutter/material.dart';

class AddCourse extends StatefulWidget {
  const AddCourse({Key? key}) : super(key: key);

  @override
  State<AddCourse> createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  late dynamicsize s;
  TextEditingController CoursetitleController = TextEditingController();
  bool expand = false;

  @override
  void initState() {
    s = dynamicsize(context, 844, 390);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: s.w(17), vertical: 40),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      demo(),
                      demo(),
                      demo(),
                      demo(),
                      demo(),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: s.w(20), vertical: s.h(10)),
                        decoration: BoxDecoration(
                            color: ApplicationColors,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text("Publish")),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: s.w(20), vertical: s.h(10)),
                        decoration: BoxDecoration(
                            color: AppredColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Text("Discard")),
                  )
                ],
              )
            ],
          )),
    );
  }

  _expantiontile() {
    bool expand = false;

    ExpandedTileController _controller =
        ExpandedTileController(isExpanded: expand);
    return StatefulBuilder(builder: (context, state) {
      return Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        child: ExpandedTile(
          theme: ExpandedTileThemeData(
              headerColor: ApplicationColors,
              headerdecoration: BoxDecoration(
                  borderRadius: expand
                      ? BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8))
                      : BorderRadius.circular(8),
                  color: expand ? ApplicationColors : Color(0xffC9C9C9)),
              headerPadding: EdgeInsets.all(8),
              trailingPadding: EdgeInsets.zero,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: s.w(18), vertical: s.h(8)),
              contentDecoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  border: Border.all(color: Colors.grey))),
          controller: _controller,
          title: Text(
            "Course Info",
            style: Boldwhite20.copyWith(
                fontSize: 18, color: expand ? Colors.white : Colors.black),
          ),
          trailing: Icon(
            MyFlutterApp.play,
            color: expand ? Colors.white : Colors.black,
            size: 13,
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Course Title",
                style: perplr14.copyWith(fontWeight: FontWeight.w800),
              ),
              s.HeightSpace(7),
              textfield(
                padding: EdgeInsets.symmetric(horizontal: 10),
                hint: "Course Title",
                controller: CoursetitleController,
              ),
              s.HeightSpace(7),
              Text(
                "Course Slug",
                style: perplr14.copyWith(fontWeight: FontWeight.w800),
              ),
              s.HeightSpace(7),
              textfield(
                padding: EdgeInsets.symmetric(horizontal: 10),
                hint: "Course Slug",
                controller: CoursetitleController,
              ),
              s.HeightSpace(7),
              Text(
                "About Course",
                style: perplr14.copyWith(fontWeight: FontWeight.w800),
              ),
              s.HeightSpace(7),
              textfield(
                line: 4,
                padding: EdgeInsets.symmetric(horizontal: 10),
                hint: "About Course",
                controller: CoursetitleController,
              ),
              s.HeightSpace(7),
              Text(
                "Course Category",
                style: perplr14.copyWith(fontWeight: FontWeight.w800),
              ),
              s.HeightSpace(7),
              textfield(
                padding: EdgeInsets.symmetric(horizontal: 10),
                hint: "Course Category",
                controller: CoursetitleController,
              ),
              s.HeightSpace(7),
              Text(
                "Course Thumbnail",
                style: perplr14.copyWith(fontWeight: FontWeight.w800),
              ),
              s.HeightSpace(7),
              textfield(
                padding: EdgeInsets.symmetric(horizontal: 10),
                hint: "Course Thumbnail",
                controller: CoursetitleController,
              ),
              s.HeightSpace(7),
            ],
          ),
          onTap: () {
            state(() {
              expand = !expand;
            });
          },
          onLongTap: () {
            debugPrint("long tapped!!");
          },
        ),
      );
    });
  }
}
