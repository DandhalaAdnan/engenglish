// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:dynamic_size/dynamic_size.dart';
import 'package:flutter/material.dart';

int Application_type = 1;

TextFormField textfield(
    {required String hint,
    required TextEditingController controller,
    String? Function(String?)? validator,
    int? line,
    EdgeInsets padding =
        const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
    TextStyle hintstyle = const TextStyle(
        color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w700),
    Color fillcolor = Colors.white,
    Widget? leading}) {
  return TextFormField(
    minLines: line,
    maxLines: line,
    validator: validator,
    controller: controller,
    decoration: InputDecoration(
      fillColor: fillcolor,
      filled: true,
      prefixIcon: leading,
      hintText: hint,
      hintStyle: hintstyle,
      contentPadding: padding,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey, width: 1.5),
      ),
      focusedBorder: OutlineInputBorder(
        gapPadding: 0.0,
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey, width: 1.5),
      ),
    ),
  );
}

AppBar appbar(
    {required Widget title,
    required Widget action,
    required Widget leading,
    required BuildContext context}) {
  return AppBar(
    backgroundColor: Theme.of(context).bottomAppBarColor,
    elevation: 0,
    // flexibleSpace: Container(
    //   decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //           colors: <Color>[
    //             Color(0xFFAEABAB),
    //
    //             Colors.transparent
    //           ])
    //   ),
    // ),
    leading: leading,
    centerTitle: true,
    title: title,
    actions: [
      SizedBox(
        width: 20,
      ),
      action,
      SizedBox(
        width: 20,
      )
    ],
  );
}

Widget ColoredContainer(String txt, MaterialColor color, BuildContext context
//     {
//   required Color color,
//   required Color bordercolor,
//   required Widget txt,
// }
    ) {
  return Container(
    height: dynamicsize(context, 844, 390).h(40),
    width: dynamicsize(context, 844, 390).h(40),
    decoration: BoxDecoration(
        color: color.shade200,
        border: Border.all(color: color.shade900),
        borderRadius: BorderRadius.circular(4)),
    child: Center(
        child: Text(
      txt,
      style: TextStyle(
          color: color.shade900, fontWeight: FontWeight.w700, fontSize: 10),
    )),
  );
}

Widget ColoredContainerwhitetxt(
    {required String txt, required Color color, required BuildContext context}
//     {
//   required Color color,
//   required Color bordercolor,
//   required Widget txt,
// }
    ) {
  return Container(
    height: dynamicsize(context, 844, 390).h(60),
    width: dynamicsize(context, 844, 390).h(60),
    decoration: BoxDecoration(
        color: color,
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(6)),
    child: Center(
        child: Text(
      txt,
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.w700, fontSize: 20),
    )),
  );
}

Widget RoundedColoredContainer(
    String txt, MaterialColor color, BuildContext context
//     {
//   required Color color,
//   required Color bordercolor,
//   required Widget txt,
// }
    ) {
  return Container(
    height: dynamicsize(context, 844, 390).h(50),
    width: dynamicsize(context, 844, 390).h(50),
    decoration: BoxDecoration(
        color: color.shade200,
        border: Border.all(color: color.shade900),
        borderRadius: BorderRadius.circular(50)),
    child: Center(
        child: Text(
      txt,
      style: TextStyle(
          color: color.shade900, fontWeight: FontWeight.w700, fontSize: 10),
    )),
  );
}
