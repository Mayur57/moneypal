import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moneypal/anim/waves.dart';
import 'package:moneypal/res/colors.dart';
import 'package:moneypal/utils/strings.dart';
class FailureScreen extends StatefulWidget {
  final String name;
  const FailureScreen({Key key, @required this.name}) : super(key: key);

  @override
  _FailureScreenState createState() => _FailureScreenState();
}

class _FailureScreenState extends State<FailureScreen> {

  @override
  Widget build(BuildContext context) {
    String name = widget.name;
    return Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    "assets/images/logo_text_long.png",
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                ],
              ),
            ),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/pay-01.png",
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                    Text(
                      "Transaction Failed",
                      style: TextStyle(
                        fontFamily: MEDIUM,
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                    Text(
                      "While paying $name",
                      style: TextStyle(
                        fontFamily: MEDIUM,
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 30,),
                    MaterialButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("RETRY", style: TextStyle(fontFamily: BOLD, letterSpacing: 5,)),
                    ),
                  ],
                )),
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
          ],
        ));
  }

  positionBottom(Widget child) => Positioned.fill(
    child: Align(
      alignment: Alignment.bottomCenter,
      child: child,
    ),
  );
}
