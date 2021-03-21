import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:moneypal/anim/waves.dart';
import 'package:moneypal/res/colors.dart';
import 'package:moneypal/utils/strings.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _key = GlobalKey<FormState>();
    TextEditingController phoneTextController = TextEditingController();
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
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
                  Text(
                    "Welcome to moneypal",
                    style: TextStyle(
                      fontFamily: MEDIUM,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter the phone number you use for your bank accounts and we'll set you up seamlessly and securely",
                    style: TextStyle(
                      fontFamily: MEDIUM,
                      fontSize: 16,
                      color: Colors.black.withOpacity(0.45),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: phoneTextController,
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                      fontFamily: MEDIUM,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: "000 000 0000",
                      hintStyle: TextStyle(
                        fontFamily: MEDIUM,
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      prefixStyle: TextStyle(
                        fontFamily: MEDIUM,
                        fontSize: 20,
                        color: Colors.black.withOpacity(0.3),
                      ),
                      prefixText: "+91 ",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  RaisedButton(
                    color: primaryAppColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    onPressed: () {},
                    child: Container(
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Let's Go",
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
