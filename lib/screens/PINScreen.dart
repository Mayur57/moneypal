import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moneypal/anim/waves.dart';
import 'package:moneypal/res/colors.dart';
import 'package:moneypal/utils/strings.dart';
import 'package:pin_view/pin_view.dart';
import 'package:vibration/vibration.dart';

class PINScreen extends StatefulWidget {
  String phone;
  PINScreen({Key key, @required this.phone}) : super(key: key);
  @override
  _PINScreenState createState() => _PINScreenState();
}

class _PINScreenState extends State<PINScreen> {
  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();
    TextEditingController phoneTextController = TextEditingController();
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    String uPIN='123456';

    return Scaffold(
      body: Stack(
        children: [
          positionBottom(
            Wave(
              height: 180,
              speed: 1.0,
            ),
          ),
          positionBottom(
            Wave(
              height: 100,
              speed: 1.0,
              offset: pi,
            ),
          ),
          positionBottom(
            Wave(
              height: 200,
              speed: 1.3,
              offset: pi / 2,
            ),
          ),
          positionBottom(
            Wave(
              height: 150,
              speed: 0.7,
              offset: -pi / 2,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Image.asset(
                      "assets/images/logo_text_long.png",
                      width: deviceWidth / 1.75,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Text(
                      "Enter your PIN",
                      style: TextStyle(
                        fontFamily: MEDIUM,
                        fontSize: 28,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  PinView(
                      count: 6, // describes the field number
                      dashPositions: [
                        3
                      ], // positions of dashes, you can add multiple
                      autoFocusFirstField: false, // defaults to true
                      margin: EdgeInsets.all(5), // margin between the fields
                      obscureText:
                          false, // describes whether the text fields should be obscure or not, defaults to false
                      style: TextStyle(
                          // style for the fields
                          fontSize: 28.0,
                          fontFamily: MEDIUM,
                      ),
                      dashStyle: TextStyle(
                          // dash style
                          fontSize: 25.0,
                          color: Colors.grey),
                      submit: (String pin) {
                        setState(() {
                          // uPIN = pin;
                        });
                      }),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    color: primaryAppColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    onPressed: () {
                      Navigator.of().pushNamed('/home');
                    },
                    child: Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Continue",
                            style: TextStyle(
                              fontFamily: MEDIUM,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 18,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  positionBottom(Widget child) => Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: child,
        ),
      );
}
