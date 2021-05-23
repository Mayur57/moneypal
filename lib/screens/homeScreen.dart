import 'package:flutter/material.dart';

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
              Container(
                color: Colors.red,
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.green,
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.blue,
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.red,
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.green,
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.blue,
                height: 200,
                width: double.infinity,
              ),              Container(
                color: Colors.red,
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.green,
                height: 200,
                width: double.infinity,
              ),
              Container(
                color: Colors.blue,
                height: 200,
                width: double.infinity,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
