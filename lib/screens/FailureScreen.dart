import 'package:flutter/material.dart';
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
        body: Center(
          child: Text("Could not pay $name"),
        )
    );
  }
}
