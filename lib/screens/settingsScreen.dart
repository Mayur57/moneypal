import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneypal/anim/waves.dart';
import 'package:moneypal/utils/strings.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
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
                      "Preferences",
                      style: TextStyle(
                        fontSize: 43,
                        fontFamily: BOLD,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/bal");
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 32),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Bank Balance",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: MEDIUM,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 32),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Connected Banks",
                      style: TextStyle(
                        fontSize: 28,
                        fontFamily: MEDIUM,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/trans');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 32),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Transactions",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: MEDIUM,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    SystemNavigator.pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 32.0, left: 32),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Logout",
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: MEDIUM,
                          color: Colors.redAccent,
                        ),
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
