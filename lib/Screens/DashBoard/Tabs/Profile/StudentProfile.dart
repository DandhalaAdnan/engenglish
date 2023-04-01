// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:dynamic_size/Size/dynamic_size.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:engenglish/Globals/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

import '../../../../Globals/Constant.dart';
import '../../../../Globals/Routes.dart';

class Studentprofile extends StatefulWidget {
  const Studentprofile({Key? key}) : super(key: key);

  @override
  State<Studentprofile> createState() => _StudentprofileState();
}

class _StudentprofileState extends State<Studentprofile> {
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
          padding: EdgeInsets.symmetric(horizontal: s.w(11), vertical: s.h(20)),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                s.HeightSpace(10),
                textfield(
                    hint: "Search anything",
                    controller: Searchcontroller,
                    leading: Icon(Icons.search)),
                s.HeightSpace(30),
                Row(
                  children: [
                    Container(
                      height: s.h(50),
                      width: s.h(50),
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          border: Border.all(color: Colors.purple.shade900),
                          borderRadius: BorderRadius.circular(50)),
                      child: Center(
                          child: Text(
                        "AB",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 10),
                      )),
                    ),
                    SizedBox(
                      width: s.w(6),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Abu Bin Ishtiyak",
                            style: Boldblack16.copyWith(
                                overflow: TextOverflow.ellipsis),
                          ),
                          Text(
                            "info@englms.com",
                            style: grey12,
                          )
                        ],
                      ),
                    ),
                    Icon(Icons.menu_rounded)
                  ],
                ),
                s.HeightSpace(31),
                Text(
                  "TOTAL BILL",
                  style: grey14,
                ),
                s.HeightSpace(4),
                Text(
                  "Paid 19 USD",
                  style: perplr14,
                ),
                s.HeightSpace(7),
                Text(
                  "Due 10 USD",
                  style: perplr14.copyWith(color: Colors.red),
                ),
                s.HeightSpace(29),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: s.w(20), vertical: s.h(10)),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(9),
                  ),
                  child: Column(
                    children: [
                      s.HeightSpace(30),
                      InkWell(
                        onTap: () {
                          routes().GotoPersonalInfo(context);
                        },
                        child: _Profilerow(
                            title: Text(
                              "Personal information",
                              style: grey16,
                            ),
                            icon: ClipOval(
                                child: Container(
                                    padding: EdgeInsets.all(5),
                                    color: Colors.grey.shade400,
                                    child: Icon(
                                      Icons.person_outline,
                                      color: Colors.white,
                                    )))),
                      ),
                      s.HeightSpace(23),
                      _Profilerow(
                          title: Text(
                            "Courses",
                            style: grey16,
                          ),
                          icon: ClipOval(
                              child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Image.asset(
                                    "assets/images/Course.png",
                                    height: 25,
                                  )))),
                      s.HeightSpace(23),
                      _Profilerow(
                          title: Text(
                            "Account activity ",
                            style: grey16,
                          ),
                          icon: ClipOval(
                              child: Container(
                                  padding: EdgeInsets.all(5),
                                  child: Icon(
                                    MyFlutterApp.restore,
                                    color: Colors.grey,
                                  )))),
                      s.HeightSpace(23),
                    ],
                  ),
                ),
                s.HeightSpace(35),
                Text(
                  "LAST LOGIN",
                  style: grey10,
                ),
                s.HeightSpace(6),
                Text(
                  "06-29-2020 02:39pm",
                  style: grey12.copyWith(color: Color(0xFF7B7979)),
                ),
                s.HeightSpace(22),
                Text(
                  "LOGIN IP",
                  style: grey10,
                ),
                s.HeightSpace(6),
                Text(
                  "192.129.243.28",
                  style: grey12.copyWith(color: Color(0xFF7B7979)),
                ),
                s.HeightSpace(22),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _Profilerow({required Widget icon, required Text title}) {
    return Row(
      children: [icon, s.WidthSpace(10), Expanded(child: title)],
    );
  }
}
