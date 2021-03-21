import 'package:flutter/material.dart';
import 'package:moneypal/res/colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [

              SizedBox(
                height: 50,
              ),

              Image.asset(
                "assets/images/logo_text_long.png",
                width: deviceWidth / 2.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
