import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:moneypal/screens/FailureScreen.dart';
import 'package:moneypal/screens/successPage.dart';
import 'package:moneypal/utils/strings.dart';

class PaymentScreen extends StatefulWidget {
  final String name;
  const PaymentScreen({Key key, @required this.name}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String name = widget.name;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          double FACTOR_OF_SUCCESS = 0.0;
          Random r = new Random();
          double tippingPoint = r.nextDouble();
          if(textController.text == "" || textController.text == "0" || textController.text == "0.0") {
            Fluttertoast.showToast(msg: "Enter a valid amount");
          } else {
            print(tippingPoint);
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => tippingPoint < FACTOR_OF_SUCCESS ? SuccessScreen(name: widget.name, amount: textController.text,) : FailureScreen(name: widget.name))
            );
          }
        },
        child: Icon(Icons.monetization_on_outlined),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/g-01.png"),
              SizedBox(height: 30,),
              Text(
                  "You are paying",
                style: TextStyle(fontSize: 20, fontFamily: MEDIUM,),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5,),
              Text(
                "$name",
                style: TextStyle(fontSize: 42, fontFamily: MEDIUM, fontWeight: FontWeight.bold,),
                textAlign: TextAlign.center,
              ),

              SizedBox(height: 30,),
              Container(
                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text("₹", style: TextStyle(fontSize: 42, fontFamily: MEDIUM),),
                  SizedBox(width: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: TextField(
                      decoration: InputDecoration(border: InputBorder.none, hintText: '00.00'),
                        controller: textController,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                          fontFamily: MEDIUM,
                          fontSize: 42,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
