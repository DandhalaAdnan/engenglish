// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names

import 'package:dynamic_size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Routes.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:flutter/material.dart';

import '../../Globals/Constant.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  late dynamicsize s;
  TextEditingController Namecontroller = TextEditingController();
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  bool agree = false;

  @override
  void initState() {
    s = dynamicsize(context, 844, 390);
    super.initState();
  }

  String dropdownvalue = 'User';

  // List of items in our dropdown menu
  var items = [
    'User',
    'Admin',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/Signin.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: s.w(35)),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: s.h(51),
                  ),
                  Center(
                      child: Image.asset("assets/images/Logo.png",
                          alignment: Alignment.center)),
                  SizedBox(
                    height: 1,
                  ),
                  Center(
                      child: Image.asset("assets/images/LogowithName.png",
                          alignment: Alignment.center)),
                  SizedBox(
                    height: s.h(29),
                  ),
                  Text(
                    "Register",
                    style: BoldYellow20,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "To Access the ENG ENGLISH",
                    style: Boldwhite14,
                  ),
                  SizedBox(
                    height: s.h(16),
                  ),
                  Text(
                    "Full Name",
                    style: Boldwhite11,
                  ),
                  SizedBox(
                    height: s.h(5),
                  ),
                  textfield(
                      hint: 'Enter your FullName', controller: Namecontroller),
                  SizedBox(
                    height: s.h(32),
                  ),
                  Text(
                    "Email",
                    style: Boldwhite11,
                  ),
                  SizedBox(
                    height: s.h(5),
                  ),
                  textfield(
                      hint: 'Enter your Email address',
                      controller: Emailcontroller),
                  SizedBox(
                    height: s.h(32),
                  ),
                  Text(
                    "Password",
                    style: Boldwhite11,
                  ),
                  SizedBox(
                    height: s.h(5),
                  ),
                  textfield(
                      hint: 'Enter your Password',
                      controller: Passwordcontroller),
                  SizedBox(
                    height: s.h(15),
                  ),
                  Text(
                    "Select Type",
                    style: Boldwhite11,
                  ),
                  SizedBox(
                    height: s.h(5),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: DropdownButton(
                      // Initial Value
                      underline: SizedBox(),
                      value: dropdownvalue,
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),
                      isExpanded: true,
                      // Array list of items
                      items: items.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownvalue = newValue!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: s.h(15),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 14,
                        height: 14,
                        margin: EdgeInsets.only(right: 10, left: 5),
                        color: Colors.white,
                        child: Checkbox(
                          value: agree,
//                          activeColor: Colors.white,
                          onChanged: (bool? value) {
                            setState(() {
                              agree = value!;
                            });
                          },
                        ),
                      ),
                      Text(
                        "I agree to ENG ENGLISH Privacy Policy & Terms.",
                        style: Boldwhite11,
                      ) //Checkbox
                    ],
                  ),
                  SizedBox(
                    height: s.h(54),
                  ),
                  InkWell(
                    onTap: () {
                      routes().GotoSigninScreen2(context);
                    },
                    child: Container(
                      height: s.h(47),
                      decoration: BoxDecoration(
                          color: SigninColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Text(
                        "Register",
                        style: Boldwhite20,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: s.h(14),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        routes().GotoSigninScreen(context);
                      },
                      child: RichText(
                        text: TextSpan(
                          style: Boldwhite12,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Already have an account ?',
                                style: Boldyellow12),
                            TextSpan(text: ' Sign in instead'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.h(10),
                  ),
                  Center(
                      child: Text(
                    "OR",
                    style: white12,
                  )),
                  SizedBox(
                    height: s.h(8),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: s.h(47),
                          decoration: BoxDecoration(
                              color: FacebookColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                              child: Text(
                            "Facebook",
                            style: Boldwhite15,
                          )),
                        ),
                      ),
                      SizedBox(
                        width: s.w(24),
                      ),
                      Expanded(
                        child: Container(
                          height: s.h(47),
                          decoration: BoxDecoration(
                              color: GoogleColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: Center(
                              child: Text(
                            "Google",
                            style: Boldwhite15,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: s.h(8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Terms and Condition",
                        style: white12,
                      ),
                      Text(
                        "Privicy Policy",
                        style: white12,
                      ),
                      Text(
                        "Help",
                        style: white12,
                      ),
                      Text(
                        "English ^",
                        style: white12,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: s.h(18),
                  ),
                  Center(
                      child: Text(
                    "© 2022 Hybrid Hub Technologies. All Rights Reserved.",
                    style: white12,
                  )),
                  SizedBox(
                    height: s.h(13),
                  ),
                ],
              ),
            ),
          ),
        ),
      )
    ]);
  }
}
