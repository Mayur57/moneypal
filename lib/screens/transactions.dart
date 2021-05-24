import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:moneypal/anim/waves.dart';
import 'package:moneypal/utils/strings.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({Key key}) : super(key: key);

  @override
  _TransactionsScreenState createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
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
            SingleChildScrollView(
              child: Column(
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
                        "Transactions",
                        style: TextStyle(
                          fontSize: 43,
                          fontFamily: BOLD,
                        ),
                      ),
                    ),
                  ),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                  TransactionCard(context, "State Bank of India", "12-Feb-2021"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget TransactionCard(context, bank, date){
  Random r = new Random();
  int amount = r.nextInt(20000) - 10000;
  return Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Align(
      alignment: Alignment.center,
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width - 25,
          // height: 85,
          child: Stack(
            children: [
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top:12.0, left: 12, bottom: 4),
                      child: Text(bank, style: TextStyle(fontFamily: BOLD, fontSize: 20)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("Acc. No.: " + generateAccountNumber(), style: TextStyle(fontFamily: MEDIUM, fontSize: 14)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Text("IFSC: ASDC" + r.nextInt(40000).toString() , style: TextStyle(fontFamily: MEDIUM, fontSize: 14)),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only( left: 12, bottom: 12),
                      child: Text("Date: " + date, style: TextStyle(fontFamily: MEDIUM, fontSize: 14)),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 36.0, right: 12,),
                  child: Text(amount > 0 ? "₹" + "$amount.00" : "-₹" + "$amount.00".substring(1), style: TextStyle(fontSize: 28, fontFamily: BOLD, color: amount < 0 ? Colors.redAccent : Colors.greenAccent),),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

generateAccountNumber() {
  Random rand = new Random();
  double out = rand.nextDouble();
  print(out);
  out = out * 100000000000000.0;
  print(out);
  int result = out.toInt();
  print(result);
  return result.toString();
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
