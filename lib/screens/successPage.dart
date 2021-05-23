import 'package:flutter/material.dart';

class SuccessScreen extends StatefulWidget {
  final String name;
  final String amount;

  const SuccessScreen({Key key, @required this.name, @required this.amount}) : super(key: key);

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {

  @override
  Widget build(BuildContext context) {
    String name = widget.name;
    String amount = widget.amount;
    return Scaffold(
      body: Center(
        child: Text("Succesfully paid $amount to $name"),
      )
    );
  }
}
