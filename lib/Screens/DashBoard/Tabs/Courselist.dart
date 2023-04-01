// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:dynamic_size/Size/dynamic_size.dart';
import 'package:engenglish/Globals/Routes.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../Globals/Constant.dart';

class Courselist extends StatefulWidget {
  const Courselist({Key? key}) : super(key: key);

  @override
  State<Courselist> createState() => _CourselistState();
}

class _CourselistState extends State<Courselist> {
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
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  children: [
                    for (int i = 0; i < 15; i++)
                      InkWell(
                        onTap: () {
                          routes().GotoCourseDetail(context);
                        },
                        child: SizedBox(
                          height: s.h(132),
                          width: s.w(169),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: s.h(103),
                                    width: s.w(169),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          "assets/images/XD.png",
                                          height: s.h(169),
                                        ),
                                        Container(
                                          height: s.h(103),
                                          color: Colors.black.withOpacity(0.4),
                                          child: Center(child: SizedBox()),
                                        ),
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                            horizontal: s.w(22),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              s.HeightSpace(13),
                                              Text(
                                                "Adobe XD",
                                                style: Boldwhite20.copyWith(
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "UI/UX design with Adobe XD with Anderson",
                                                style: white15.copyWith(
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  s.HeightSpace(s.h(5)),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      s.WidthSpace(16),
                                      RatingBar.builder(
                                        initialRating: 4,
                                        minRating: 1,
                                        itemSize: 10,
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
                                          if (kDebugMode) {
                                            print(rating);
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
