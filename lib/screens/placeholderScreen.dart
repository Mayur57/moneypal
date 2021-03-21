import 'package:flutter/material.dart';

/// Mayur Bhoi (Mayur57):
/// This page was created on 22 March 2021 at 0246
///
/// Screen Description and Semantics:
/// Placeholder Screen is a page that will be placed
/// instead of pages that might not yet be implemented
/// or act as an error page. The page only contains a
/// text saying it's an error.

class PlaceholderScreen extends StatefulWidget {
  @override
  _PlaceholderScreenState createState() => _PlaceholderScreenState();
}

class _PlaceholderScreenState extends State<PlaceholderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset("assets/images/404_error.png", width: MediaQuery.of(context).size.width * 0.75,),
      ),
    );
  }
}
