import 'package:dynamic_size/Size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Constant.dart';
import 'package:engenglish/Globals/Routes.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:engenglish/Globals/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class instructorhome extends StatefulWidget {
  const instructorhome({Key? key}) : super(key: key);

  @override
  State<instructorhome> createState() => _instructorhomeState();
}

class _instructorhomeState extends State<instructorhome> {
  late dynamicsize s;

  TextEditingController Searchcontroller = TextEditingController();

  @override
  void initState() {
    s = dynamicsize(context, 844, 390);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(horizontal: s.w(11), vertical: s.h(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                textfield(
                    hint: "Search anything",
                    controller: Searchcontroller,
                    leading: Icon(Icons.search)),
                SizedBox(
                  height: s.h(20),
                ),
                _TotleErning(),
                SizedBox(
                  height: s.h(15),
                ),
                Row(
                  children: [
                    Expanded(
                      child: _AfterTotleErning(
                          title: "Active Students",
                          data: "329",
                          txt: "4.63%",
                          subdata: "vs. last week",
                          Visible: true),
                    ),
                    SizedBox(
                      width: s.w(20),
                    ),
                    Expanded(
                      child: _AfterTotleErning(
                          title: "New Enrolment",
                          data: "149",
                          txt: "4.63%",
                          subdata: "vs. Yesterday",
                          Visible: true),
                    ),
                  ],
                ),
                SizedBox(
                  height: s.h(17),
                ),
                _Mycourses(),
                SizedBox(
                  height: s.h(19),
                ),
                _Feedback()
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          routes().GotoAddCourse(this.context);
        },
        child: Icon(Icons.add),
      ),
    );
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
          _Mycoursestile(
              color: Colors.lightBlue,
              title: "AD",
              first: "Learn Android Development with project",
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
        ],
      ),
    );
  }

  Widget _Feedback() {
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
                "Student's Feedback",
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
          _feedbacktile(
            color: Colors.orange,
            title: "AB",
            first: "Abu Bakr Mirza",
            rating: 5,
            third: "Great course highly recommend this course....",
          ),
          SizedBox(
            height: s.h(11),
          ),
          _feedbacktile(
            color: Colors.purple,
            title: "AS",
            first: "Ashley Lawson",
            rating: 4,
            third: "Great course highly recommend this course....",
          ),
          SizedBox(
            height: s.h(11),
          ),
          _feedbacktile(
            color: Colors.lightGreen,
            title: "JM",
            first: "Jane Montgomery",
            rating: 2,
            third:
                "Instructor doesn’t know what he is talking about. Waste of money....",
          ),
          SizedBox(
            height: s.h(11),
          ),
          _feedbacktile(
            color: Colors.red,
            title: "LH",
            first: "Larry Henry",
            rating: 5,
            third:
                "The course has not been updated. The information are old....",
          ),
          SizedBox(
            height: s.h(11),
          ),
        ],
      ),
    );
  }

  Widget _feedbacktile({
    required String first,
    required int rating,
    required String third,
    required String title,
    required MaterialColor color,
  }) {
    return Row(
      children: [
        RoundedColoredContainer(title, color, context),
        SizedBox(
          width: s.w(4),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      first,
                      style:
                          Boldblack10.copyWith(overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  RatingBar.builder(
                    initialRating: double.parse(rating.toString()),
                    minRating: 1,
                    itemSize: 10,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      third,
                      style: grey8,
                    ),
                  ),
                  Text(
                    "Full Review",
                    style: perplr10,
                  )
                ],
              )
            ],
          ),
        )
      ],
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
