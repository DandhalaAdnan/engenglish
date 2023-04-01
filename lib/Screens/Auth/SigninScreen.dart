// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names

import 'package:dynamic_size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Routes.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:engenglish/Screens/DashBoard/Dashboard.dart';
import 'package:flutter/material.dart';

import '../../Globals/Constant.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late dynamicsize s;
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();

  @override
  void initState() {
    s = dynamicsize(context, 844, 390);
    super.initState();
  }

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
                    "Sign-In",
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
                    height: s.h(34),
                  ),
                  Row(
                    children: [
                      Text(
                        "Email or Username",
                        style: Boldwhite11,
                      ),
                      Spacer(),
                      Text(
                        "Need Help ?",
                        style: BoldYellow11,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: s.h(5),
                  ),
                  textfield(
                      hint: 'Enter your Email address or username',
                      controller: Emailcontroller),
                  SizedBox(
                    height: s.h(32),
                  ),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: Boldwhite11,
                      ),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          style: Boldperple11,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Forget',
                            ),
                            TextSpan(text: ' Passcode ', style: BoldYellow11),
                            TextSpan(text: '?'),
                          ],
                        ),
                      ),
                      // Text("Forget passcode ?",style: BoldYellow11,),
                    ],
                  ),
                  SizedBox(
                    height: s.h(5),
                  ),
                  textfield(
                      hint: 'Enter your Password',
                      controller: Passwordcontroller),
                  SizedBox(
                    height: s.h(47),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashBoard(InitialPage: 0),
                          ));
                    },
                    child: Container(
                      height: s.h(47),
                      decoration: BoxDecoration(
                          color: SigninColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                          child: Text(
                        "Sign in",
                        style: Boldwhite20,
                      )),
                    ),
                  ),
                  SizedBox(
                    height: s.h(18),
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        routes().GotoSignupScreen(context);
                      },
                      child: RichText(
                        text: TextSpan(
                          style: Boldwhite12,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'New on our platform?',
                                style: Boldyellow12),
                            TextSpan(text: '  Create an account '),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: s.h(13),
                  ),
                  Center(
                      child: Text(
                    "OR",
                    style: white12,
                  )),
                  SizedBox(
                    height: s.h(13),
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
                    height: s.h(67),
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
                    height: s.h(57),
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
