import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moneypal/res/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              appbar(),
              SizedBox(
                height: 20,
              ),
              Image.asset("assets/images/intro-01.png"),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  "Contacts",
                  style: TextStyle(
                    fontFamily: "Gilroy Medium",
                    fontSize: 38,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Pay people easily and safely",
                  style: TextStyle(
                      fontFamily: "Gilroy Medium",
                      fontSize: 16,
                      color: primaryAppColor.withOpacity(0.8)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  contact("Mayur\nBhoi"),
                  contact("Prachi\nMantri"),
                  contact("Shivanchal\nAgarwal"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  contact("Naintara\nSingh"),
                  contact("Landeshwar\nReddy"),
                  contact("Kuchbhi\nMehta"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  contact("Placeholder\nChad"),
                  contact("Ganesh"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: primaryAppColor.withOpacity(0.2),
                          border: Border.all(
                            color: primaryAppColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Invite',
                        style: TextStyle(
                          fontFamily: "Gilroy Medium",
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  "Nearby",
                  style: TextStyle(
                    fontFamily: "Gilroy Medium",
                    fontSize: 38,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Nearby businesses you can pay easily",
                  style: TextStyle(
                      fontFamily: "Gilroy Medium",
                      fontSize: 16,
                      color: primaryAppColor.withOpacity(0.8)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  contact("MFC"),
                  contact("MIT\nCafeteria"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: primaryAppColor.withOpacity(0.2),
                          border: Border.all(
                            color: primaryAppColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'More',
                        style: TextStyle(
                          fontFamily: "Gilroy Medium",
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  "Services",
                  style: TextStyle(
                    fontFamily: "Gilroy Medium",
                    fontSize: 38,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Services you can pay for",
                  style: TextStyle(
                      fontFamily: "Gilroy Medium",
                      fontSize: 16,
                      color: primaryAppColor.withOpacity(0.8)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  contact("Jio\nRecharge"),
                  contact("Netflix"),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                          color: primaryAppColor.withOpacity(0.2),
                          border: Border.all(
                            color: primaryAppColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            size: 45,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'More',
                        style: TextStyle(
                          fontFamily: "Gilroy Medium",
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget appbar() {
  return Container(
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(
              FontAwesomeIcons.qrcode,
              color: Colors.black38,
            ),
            onPressed: () {},
          ),
        ),
        Text(
          "moneypal",
          style: TextStyle(
            fontFamily: 'Gilroy Medium',
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.black54,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.black38,
            ),
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}

Widget contact(String name) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          color: primaryAppColor.withOpacity(0.2),
          border: Border.all(
            color: primaryAppColor,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: IconButton(
          icon: Icon(
            Icons.person,
            size: 45,
          ),
          onPressed: () {},
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        name.length > 18 ? name.substring(0, 15) + "..." : name,
        style: TextStyle(
          fontFamily: "Gilroy Medium",
          color: Colors.black54,
        ),
        textAlign: TextAlign.center,
      ),
    ],
  );
}
