// ignore_for_file: prefer_const_constructors

import 'package:dynamic_size/Size/dynamic_size.dart';
import 'package:engenglish/Globals/Colors.dart';
import 'package:engenglish/Globals/Textstyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late dynamicsize s;

  TextEditingController Couponcontroller = TextEditingController();

  int _groupValue = 1;

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
          padding: EdgeInsets.symmetric(horizontal: s.w(18)),
          child: Column(
            children: [
              s.HeightSpace(20),
              Row(
                children: [
                  Text(
                    "Cart ",
                    style: perplr14.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                  Icon(
                    Icons.shopping_cart,
                    color: ApplicationColors,
                  )
                ],
              ),
              s.HeightSpace(20),
              Row(
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
                          "Adobe XD",
                          style: grey24,
                        ),
                        s.HeightSpace(10),
                        Text(
                          "UI/UX design with Adobe XD with Anderson",
                          style: grey14,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "\$ 45.00",
                    style: perplr14.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w800),
                  )
                ],
              ),
              s.HeightSpace(30),
              Container(
                height: s.h(37),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        controller: Couponcontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Coupon Code",
                          hintStyle:
                              grey14.copyWith(fontWeight: FontWeight.w800),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            gapPadding: 0.0,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                bottomLeft: Radius.circular(8)),
                            borderSide:
                                BorderSide(color: Colors.grey, width: 1.5),
                          ),
                        ),
                      ),
                    ),
                    s.WidthSpace(2),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: ApplicationColors,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                        ),
                        child: Center(
                          child: Text(
                            "Apply",
                            style: Boldwhite15,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              s.HeightSpace(24),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Discounted",
                        style: Boldblack16,
                      ),
                      s.HeightSpace(5),
                      Text(
                        "Total Amount",
                        style: Boldblack16,
                      ),
                    ],
                  ),
                  s.WidthSpace(15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$ 5.00",
                        style: grey16,
                      ),
                      s.HeightSpace(5),
                      Text(
                        "\$ 45.00",
                        style: perplr14.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    color: ApplicationColors.withOpacity(0.4),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: s.w(22), vertical: s.h(5)),
                      child: Text(
                        "Payment Options",
                        style: Boldwhite14,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                      border: Border.all(color: Colors.grey, width: 1.5),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: _groupValue,
                              value: 1,
                              onChanged: (int? value) {
                                setState(() {
                                  _groupValue = value!;
                                });
                              },
                            ),
                            Text(
                              "Credit / Debit Card",
                              style: perplr14.copyWith(
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1.5,
                        ),
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: _groupValue,
                              value: 2,
                              onChanged: (int? value) {
                                setState(() {
                                  _groupValue = value!;
                                });
                              },
                            ),
                            Text(
                              "Paypal",
                              style: perplr14.copyWith(
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1.5,
                        ),
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: _groupValue,
                              value: 3,
                              onChanged: (int? value) {
                                setState(() {
                                  _groupValue = value!;
                                });
                              },
                            ),
                            Text(
                              "ENG Token",
                              style: perplr14.copyWith(
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.grey,
                          thickness: 1.5,
                        ),
                        Row(
                          children: [
                            Radio<int>(
                              groupValue: _groupValue,
                              value: 4,
                              onChanged: (int? value) {
                                setState(() {
                                  _groupValue = value!;
                                });
                              },
                            ),
                            Text(
                              "G-pay",
                              style: perplr14.copyWith(
                                  fontWeight: FontWeight.w800),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              s.HeightSpace(17),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: s.w(22), vertical: s.h(7)),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ApplicationColors,
                  ),
                  child: Text(
                    "Proceed to Checkout",
                    style: Boldwhite15,
                  ),
                ),
              ),
              s.HeightSpace(17),
            ],
          ),
        ),
      ),
    );
  }
}
