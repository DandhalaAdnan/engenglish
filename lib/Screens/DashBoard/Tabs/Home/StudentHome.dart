// ignore_for_file: prefer_const_constructors

import 'package:dynamic_size/Size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Constant.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:engenglish/Globals/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class studenthome extends StatefulWidget {
  const studenthome({Key? key}) : super(key: key);

  @override
  State<studenthome> createState() => _studenthomeState();
}

class _studenthomeState extends State<studenthome> {
  late dynamicsize s;

  TextEditingController Searchcontroller = TextEditingController();

  @override
  void initState() {
    s = dynamicsize(context, 844, 390);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: s.w(11),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              textfield(
                  hint: "Search anything",
                  controller: Searchcontroller,
                  leading: Icon(Icons.search)),
              SizedBox(
                height: s.h(17),
              ),
              Row(
                children: [
                  _teleContainer(
                      title: "Enrolled",
                      titlestyle: Boldblack14,
                      subtitlestyle: Boldblack16,
                      subtitle: "5 Courses",
                      color: Darkyellow),
                  s.WidthSpace(14),
                  _teleContainer(
                      title: "Active ",
                      titlestyle: Boldwhite14,
                      subtitlestyle: Boldwhite14.copyWith(fontSize: 16),
                      subtitle: "3 Courses",
                      color: SigninColor),
                  s.WidthSpace(14),
                  _teleContainer(
                      title: "Completed",
                      titlestyle: Boldblack14,
                      subtitlestyle: Boldblack16,
                      subtitle: "2 Courses",
                      color: Darkyellow)
                ],
              ),
              SizedBox(
                height: s.h(23),
              ),
              Text(
                "In Progress Courses",
                style: perplr14.copyWith(fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: s.h(25),
              ),
              _teleRow(
                  title: "Adobe XD",
                  subtitle: "UI/UX design with Adobe XD with Anderson",
                  value: 75),
              s.HeightSpace(25),
              _teleRow(
                  title: "Adobe XD",
                  subtitle: "UI/UX design with Adobe XD with Anderson",
                  value: 30),
              s.HeightSpace(25),
              _teleRow(
                  title: "Adobe XD",
                  subtitle: "UI/UX design with Adobe XD with Anderson",
                  value: 100),
            ],
          ),
        ));
  }

  Widget _teleRow(
      {required String title, required String subtitle, required int value}) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            "assets/images/XDlogo.png",
            fit: BoxFit.contain,
            height: s.h(57),
          ),
        ),
        s.WidthSpace(20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: grey24,
              ),
              s.HeightSpace(10),
              Text(
                subtitle,
                style: grey14,
              ),
              s.HeightSpace(10),
              LinearProgressIndicator(
                value: value / 100,
              ),
              s.HeightSpace(10),
              value == 100
                  ? _Statrcoursbutton()
                  : Text(
                      "${value}% complete",
                      style: grey12,
                    )
            ],
          ),
        )
      ],
    );
  }

  Widget _Statrcoursbutton() {
    return Container(
      height: s.h(32),
      padding: EdgeInsets.symmetric(horizontal: 11),
      decoration: BoxDecoration(
          color: ApplicationColors, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Start Course",
            style: Boldwhite14.copyWith(fontSize: 17),
          ),
          s.WidthSpace(5),
          Icon(
            MyFlutterApp.play,
            color: Colors.white,
            size: 15,
          )
        ],
      ),
    );
  }

  Widget _teleContainer(
      {required String title,
      required String subtitle,
      required Color color,
      required TextStyle titlestyle,
      required TextStyle subtitlestyle}) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.symmetric(horizontal: 7),
      height: s.h(77),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: titlestyle,
          ),
          s.HeightSpace(4),
          Text(
            subtitle,
            style: subtitlestyle,
          )
        ],
      ),
    ));
  }

  Widget _Mycourses() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: s.w(20), vertical: s.h(10)),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "My Courses",
                style: Boldblack14,
              ),
              Text(
                "View All",
                style: perplr10,
              ),
            ],
          ),
          SizedBox(
            height: s.h(13),
          ),
          _Mycoursestile(
              color: Colors.green,
              title: "UI/UX",
              first: "UI/UX Design with Adobe XD",
              second: "\$1780.00",
              third: "\$89.00",
              four: "20 Sold"),
          SizedBox(
            height: s.h(11),
          ),
          _Mycoursestile(
              color: Colors.purple,
              title: "WDR",
              first: "Front-end Web Development with React",
              second: "\$990.00",
              third: "\$99.00",
              four: "9 Sold"),
          SizedBox(
            height: s.h(11),
          ),
          _Mycoursestile(
              color: Colors.orange,
              title: "PHP",
              first: "Learn PHP Basic to Advance",
              second: "\$1780.00",
              third: "\$99.00",
              four: "10 Sold"),
          SizedBox(
            height: s.h(11),
          ),
          _Mycoursestile(
              color: Colors.green,
              title: "UI/UX",
              first: "UI/UX Design with Adobe XD",
              second: "\$1780.00",
              third: "\$89.00",
              four: "20 Sold"),
          SizedBox(
            height: s.h(11),
          ),
        ],
      ),
    );
  }

  Widget _Mycoursestile({
    required String first,
    required String second,
    required String third,
    required String four,
    required String title,
    required MaterialColor color,
  }) {
    return Row(
      children: [
        ColoredContainer(title, color, context),
        SizedBox(
          width: s.w(4),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    first,
                    style: Black10,
                  ),
                  Text(
                    second,
                    style: Black10,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    third,
                    style: Black10,
                  ),
                  Text(
                    four,
                    style: grey8,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _AfterTotleErning({
    required String title,
    required String data,
    required String txt,
    required String subdata,
    required bool Visible,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 22),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: perplr14,
          ),
          SizedBox(
            height: s.h(12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                data,
                style: Black16,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        replacement: RotatedBox(
                            quarterTurns: 1,
                            child: Icon(MyFlutterApp.trending_flat,
                                color: AppredColor)),
                        visible: Visible,
                        child: RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              MyFlutterApp.trending_flat,
                              color: AppgreenColor,
                            )),
                      ),
                      Visibility(
                        replacement: Text(
                          txt,
                          style: red12,
                        ),
                        visible: Visible,
                        child: Text(
                          txt,
                          style: green12,
                        ),
                      )
                    ],
                  ),
                  Text(
                    subdata,
                    style: grey10,
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _TotleErning() {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Earning",
            style: BoldBlack20,
          ),
          SizedBox(
            height: s.h(18),
          ),
          Row(
            children: [
              Expanded(
                child: _totleerningcolumn(
                    title: "Monthly",
                    txt: "9.28K",
                    subtitle: "4.63%",
                    Visible: true),
              ),
              Expanded(
                child: _totleerningcolumn(
                    title: "Weekly",
                    txt: "2.69K",
                    subtitle: "1.92%",
                    Visible: false),
              ),
              Expanded(
                child: _totleerningcolumn(
                    title: "Daily (Avg)",
                    txt: "0.94K",
                    subtitle: "3.45%",
                    Visible: true),
              )
            ],
          ),
          SizedBox(
            height: s.h(40),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "01 Jul, 2020",
                style: grey12,
              ),
              Text(
                "30 Jul, 2020",
                style: grey12,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _totleerningcolumn(
      {required String title,
      required String txt,
      required String subtitle,
      required bool Visible}) {
    return Column(
      children: [
        Text(
          title,
          style: grey16,
        ),
        SizedBox(
          height: s.h(9),
        ),
        Text(
          txt,
          style: Black16,
        ),
        SizedBox(
          height: s.h(6),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              replacement: RotatedBox(
                  quarterTurns: 1,
                  child: Icon(MyFlutterApp.trending_flat, color: AppredColor)),
              visible: Visible,
              child: RotatedBox(
                  quarterTurns: 3,
                  child: Icon(
                    MyFlutterApp.trending_flat,
                    color: AppgreenColor,
                  )),
            ),
            Visibility(
              replacement: Text(
                subtitle,
                style: red12,
              ),
              visible: Visible,
              child: Text(
                subtitle,
                style: green12,
              ),
            )
          ],
        ),
      ],
    );
  }
}
