import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneypal/anim/waves.dart';
import 'package:moneypal/utils/strings.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({Key key}) : super(key: key);

  @override
  _BalanceScreenState createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  @override
  Widget build(BuildContext context) {
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
          positionTop(
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 67.0),
                  child: Image.asset(
                    "assets/images/logo_text_long.png",
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 67.0, left: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bank Balance",
                      style: TextStyle(
                        fontSize: 43,
                        fontFamily: BOLD,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bank Name:",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: MEDIUM,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "State Bank of India (SBI)",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: BOLD,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Balance:",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: MEDIUM,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "INR 12,73,938.90",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: BOLD,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Account Number:",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: MEDIUM,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "78234420696712",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: BOLD,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Bank Branch:",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: MEDIUM,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "SBI Mars Branch",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: BOLD,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "IFSC Code:",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: MEDIUM,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "SBIX802093774",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: BOLD,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

positionBottom(Widget child) => Positioned.fill(
  child: Align(
    alignment: Alignment.bottomCenter,
    child: child,
  ),
);

positionTop(Widget child) => Positioned.fill(
  child: Align(
    alignment: Alignment.topCenter,
    child: child,
  ),
);