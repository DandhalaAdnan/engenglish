// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dynamic_size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Routes.dart';
import 'package:engenglish/Globals/my_flutter_app_icons.dart';
import 'package:engenglish/Screens/DashBoard/Tabs/Chat/ChatScreen.dart';
import 'package:engenglish/Screens/DashBoard/Tabs/Courselist.dart';
import 'package:engenglish/Screens/DashBoard/Tabs/Home/HomeScreen.dart';
import 'package:engenglish/Screens/DashBoard/Tabs/Home/StudentHome.dart';
import 'package:engenglish/Screens/DashBoard/Tabs/Profile/ProfileScreen.dart';
import 'package:engenglish/Screens/DashBoard/Tabs/Profile/StudentProfile.dart';
import 'package:engenglish/Screens/DashBoard/Tabs/ReawardScreen2.dart';
import 'package:flutter/material.dart';

import '../../Globals/Constant.dart';

class DashBoard extends StatefulWidget {
  final int InitialPage;

  const DashBoard({Key? key, required this.InitialPage}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late dynamicsize s;
  late PageController Pagecontroller;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  int SelectedIndex = 0;

  @override
  void initState() {
    Pagecontroller = PageController(initialPage: widget.InitialPage);
    s = dynamicsize(context, 844, 390);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              DrawerHeader(
                  child: Column(
                children: [
                  Image.asset("assets/images/Logoperple.png"),
                  s.HeightSpace(15),
                  Image.asset("assets/images/LogowithNameperple.png"),
                ],
              )),
              ListTile(
                onTap: () {
                  routes().GotoCourseCategory(this.context);
                },
                leading: Icon(Icons.houseboat_sharp),
                title: Text("Course Category"),
              ),
              ListTile(
                onTap: () {
                  routes().GotoAddCourse(this.context);
                },
                leading: Icon(Icons.houseboat_sharp),
                title: Text("Add Course"),
              ),
              ListTile(
                onTap: () {
                  routes().GotoCart(this.context);
                },
                leading: Icon(Icons.shopping_cart_outlined),
                title: Text("Cart"),
              )
            ],
          ),
        ),
      ),
      appBar: appbar(
          context: context,
          title: Image.asset("assets/images/LogowithNameperple.png"),
          action: InkWell(
              onTap: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              child: Icon(
                MyFlutterApp.bars,
                color: Theme.of(context).primaryColor,
              )),
          leading: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Studentprofile(),
                    ));
              },
              child: Icon(
                MyFlutterApp.bell_1,
                color: Theme.of(context).primaryColor,
              ))),
      body: Container(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            setState(() {
              SelectedIndex = value;
            });
          },
          controller: Pagecontroller,
          children: [
            Application_type == 1 ? instructorhome() : studenthome(),
            Courselist(),
            Application_type == 1 ? ProfileScreen() : Studentprofile(),
            ChatScreen(),
            ReawardScreen2(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            SelectedIndex = value;
            Pagecontroller.jumpToPage(SelectedIndex);
          });
        },
        currentIndex: SelectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Darkyellow,
        unselectedItemColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              MyFlutterApp.home,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.book_open,
              ),
              label: "Book"),
          BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.user,
              ),
              label: "User"),
          BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.paper_plane,
              ),
              label: "plan"),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.trophy), label: "trophy"),
        ],
      ),
    );
  }
}
