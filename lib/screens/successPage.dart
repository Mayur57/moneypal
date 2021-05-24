import 'dart:math';

import 'package:flutter/material.dart';
import 'package:moneypal/anim/waves.dart';
import 'package:moneypal/utils/strings.dart';

class SuccessScreen extends StatefulWidget {
  final String name;
  final String amount;

  const SuccessScreen({Key key, @required this.name, @required this.amount})
      : super(key: key);

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    String name = widget.name;
    String amount = widget.amount;
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
              "assets/images/pay-02.png",
              width: MediaQuery.of(context).size.width / 2,
            ),
            Text(
              "Successfully paid",
              style: TextStyle(
                fontFamily: MEDIUM,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            Text(
              "₹$amount",
              style: TextStyle(
                fontFamily: MEDIUM,
                fontWeight: FontWeight.bold,
                fontSize: 36,
              ),
            ),
            Text(
              "to $name",
              style: TextStyle(
                fontFamily: MEDIUM,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
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
