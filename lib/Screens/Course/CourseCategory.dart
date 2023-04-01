// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names

import 'package:dynamic_size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Routes.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:engenglish/Globals/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

import '../../Globals/Constant.dart';
import '../../Model/CourseClipmodel.dart';

class CourseCategory extends StatefulWidget {
  const CourseCategory({Key? key}) : super(key: key);

  @override
  State<CourseCategory> createState() => _CourseCategoryState();
}

class _CourseCategoryState extends State<CourseCategory> {
  late dynamicsize s;

  @override
  void initState() {
    s = dynamicsize(context, 844, 390);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Course Category",
                style: perplr14.copyWith(fontSize: 15),
              ),
              s.HeightSpace(6),
              Text(
                "You have total 8 Categories",
                style: grey16,
              ),
              s.HeightSpace(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: s.w(5), vertical: s.h(5)),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Icon(MyFlutterApp.filter,
                              color: Theme.of(context).primaryColor),
                          s.WidthSpace(5),
                          Text(
                            "filtered by",
                            style: perplr14.copyWith(fontSize: 15),
                          ),
                          s.WidthSpace(5),
                          Icon(MyFlutterApp.angle_double_right,
                              size: 15, color: Theme.of(context).primaryColor),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      routes().GotoAddCourse(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: s.w(7), vertical: s.h(5)),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          s.WidthSpace(5),
                          Text(
                            "Add Category",
                            style: white15,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              s.HeightSpace(30),
              _CourseContainer(
                  txt: "GD",
                  color: ApplicationColors,
                  title: "Graphics Design",
                  subtitle: "4 SubCategories",
                  subtitle2:
                      "Website Design & Develop the website with web applications",
                  data: [
                    ClipM(txt: "Photoshop", color: Colors.purple),
                    ClipM(txt: "Adobe Illustrator", color: Colors.blue),
                    ClipM(txt: "Logo Design", color: Colors.green),
                    ClipM(txt: "Drawing", color: Colors.pink),
                    ClipM(txt: "Figma", color: Colors.orange),
                  ]),
              s.HeightSpace(30),
              _CourseContainer(
                  txt: "WD",
                  color: Colors.lightBlueAccent,
                  title: "Web Development",
                  subtitle: "4 SubCategories",
                  subtitle2:
                      "Website Design & Develop the website with web applications",
                  data: [
                    ClipM(txt: "Responsive Design", color: Colors.purple),
                    ClipM(txt: "Wordpress Customization", color: Colors.blue),
                    ClipM(txt: "Theme Development", color: Colors.green),
                    ClipM(txt: "Bootstrap", color: Colors.pink),
                    ClipM(txt: "HTML & CSS Grid", color: Colors.orange),
                  ]),
              s.HeightSpace(30),
              _CourseContainer(
                  txt: "MA",
                  color: Colors.yellow,
                  title: "Mobile Application",
                  subtitle: "4 SubCategories",
                  subtitle2:
                      "Website Design & Develop the website with web applications",
                  data: [
                    ClipM(txt: "Mobile App Design", color: Colors.purple),
                    ClipM(txt: "User Interface", color: Colors.blue),
                    ClipM(txt: "Design Thinking", color: Colors.green),
                    ClipM(txt: "Prototyping", color: Colors.pink),
                  ]),
              s.HeightSpace(30),
              _CourseContainer(
                  txt: "GD",
                  color: Colors.blue,
                  title: "Graphics Design",
                  subtitle: "4 SubCategories",
                  subtitle2:
                      "Website Design & Develop the website with web applications",
                  data: [
                    ClipM(txt: "Photoshop", color: Colors.purple),
                    ClipM(txt: "Adobe Illustrator", color: Colors.blue),
                    ClipM(txt: "Logo Design", color: Colors.green),
                    ClipM(txt: "Drawing", color: Colors.pink),
                    ClipM(txt: "Figma", color: Colors.orange),
                  ]),
              s.HeightSpace(30),
              _CourseContainer(
                  txt: "WD",
                  color: Colors.orange,
                  title: "Web Development",
                  subtitle: "4 SubCategories",
                  subtitle2:
                      "Website Design & Develop the website with web applications",
                  data: [
                    ClipM(txt: "Responsive Design", color: Colors.purple),
                    ClipM(txt: "Wordpress Customization", color: Colors.blue),
                    ClipM(txt: "Theme Development", color: Colors.green),
                    ClipM(txt: "Bootstrap", color: Colors.pink),
                    ClipM(txt: "HTML & CSS Grid", color: Colors.orange),
                  ]),
            ],
          ),
        ),
      )),
    );
  }

  _CourseContainer(
      {required String txt,
      required Color color,
      required String title,
      required String subtitle,
      required String subtitle2,
      required List<ClipM> data}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: s.w(10), vertical: s.h(19)),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ColoredContainerwhitetxt(
                  txt: txt, color: color, context: context),
              s.WidthSpace(8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Boldblack16,
                    ),
                    Text(
                      subtitle,
                      style: grey10,
                    ),
                    s.HeightSpace(2),
                    Text(
                      subtitle2,
                      style: grey14,
                    ),
                  ],
                ),
              )
            ],
          ),
          s.HeightSpace(10),
          Wrap(spacing: 5, runSpacing: 5, children: [
            for (int i = 0; i < data.length; i++)
              _ColoredContainer(model: data[i])
          ])
        ],
      ),
    );
  }

  Widget _ColoredContainer({required ClipM model}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: s.w(5), vertical: s.h(5)),
      decoration: BoxDecoration(
        color: model.color.shade200,
        border: Border.all(color: model.color.shade900),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        model.txt,
        style: TextStyle(
            color: model.color.shade900,
            fontWeight: FontWeight.w500,
            fontSize: 15),
      ),
    );
  }
}
