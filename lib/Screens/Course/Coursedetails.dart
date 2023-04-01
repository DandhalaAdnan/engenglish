// ignore_for_file: prefer_const_constructors

import 'package:dynamic_size/Size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Routes.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:engenglish/Globals/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../Globals/Constant.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
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
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: s.w(20), vertical: s.h(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textfield(
                hint: "Search anything",
                controller: Searchcontroller,
                leading: Icon(Icons.search)),
            s.HeightSpace(14),
            Text(
              "Course Details",
              style: perplr14,
            ),
            s.HeightSpace(14),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Column(
                          children: [
                            SizedBox(
                              height: s.h(210),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/XD.png",
                                    height: s.h(210),
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Container(
                                    height: s.h(210),
                                    color: Colors.black.withOpacity(0.4),
                                    child: Center(child: SizedBox()),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: s.w(22), vertical: s.h(15)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipOval(
                                          child: Image.asset(
                                            "assets/images/XDlogo.png",
                                            fit: BoxFit.contain,
                                            height: s.h(57),
                                          ),
                                        ),
                                        s.HeightSpace(13),
                                        Text(
                                          "Adobe XD",
                                          style: Boldwhite20.copyWith(
                                              fontSize: 20),
                                        ),
                                        s.HeightSpace(13),
                                        Text(
                                          "UI/UX design with Adobe XD with Anderson",
                                          style: white15.copyWith(fontSize: 16),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            s.HeightSpace(20),
                            Row(
                              children: [
                                s.WidthSpace(16),
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 1,
                                  itemSize: 22,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Spacer(),
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: Icon(
                                    MyFlutterApp.play,
                                    color: ApplicationColors,
                                    size: 14,
                                  ),
                                ),
                                s.WidthSpace(16),
                              ],
                            ),
                            s.WidthSpace(10),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                  "What You'll Learn. In this Adobe XD full course, you'll learn everything you need to know about how to use Adobe XD. It starts by covering the basics like working with artboards, shapes, and images, and then moves on to more advanced features like working with assets and creating responsive layouts"),
                            ),
                            s.WidthSpace(10),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Column(
                          children: [
                            SizedBox(
                              height: s.h(210),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    "assets/images/XD.png",
                                    height: s.h(210),
                                    fit: BoxFit.cover,
                                    width: double.infinity,
                                  ),
                                  Container(
                                    height: s.h(210),
                                    color: Colors.black.withOpacity(0.4),
                                    child: Center(child: SizedBox()),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: s.w(22), vertical: s.h(15)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipOval(
                                          child: Image.asset(
                                            "assets/images/XDlogo.png",
                                            fit: BoxFit.contain,
                                            height: s.h(57),
                                          ),
                                        ),
                                        s.HeightSpace(13),
                                        Text(
                                          "Adobe XD",
                                          style: Boldwhite20.copyWith(
                                              fontSize: 20),
                                        ),
                                        s.HeightSpace(13),
                                        Text(
                                          "UI/UX design with Adobe XD with Anderson",
                                          style: white15.copyWith(fontSize: 16),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            s.HeightSpace(20),
                            Row(
                              children: [
                                s.WidthSpace(16),
                                RatingBar.builder(
                                  initialRating: 4,
                                  minRating: 1,
                                  itemSize: 22,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                ),
                                Spacer(),
                                RotatedBox(
                                  quarterTurns: 3,
                                  child: Icon(
                                    MyFlutterApp.play,
                                    color: ApplicationColors,
                                    size: 14,
                                  ),
                                ),
                                s.WidthSpace(16),
                              ],
                            ),
                            s.WidthSpace(10),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                  "What You'll Learn. In this Adobe XD full course, you'll learn everything you need to know about how to use Adobe XD. It starts by covering the basics like working with artboards, shapes, and images, and then moves on to more advanced features like working with assets and creating responsive layouts"),
                            ),
                            s.WidthSpace(10),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            s.HeightSpace(10),
            InkWell(
              onTap: () {
                routes().GotoCourseLacture(context);
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: s.w(10),
                ),
                padding: EdgeInsets.symmetric(vertical: 15),
                decoration: BoxDecoration(
                    color: ApplicationColors,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    "Continue to lectures",
                    style: BoldBlack20.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
