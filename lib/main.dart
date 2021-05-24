import 'package:flutter/material.dart';
import 'package:moneypal/res/colors.dart';
import 'package:moneypal/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'moneypal',
      theme: ThemeData(
        primaryColor: primaryAppColor,
      ),
      initialRoute: '/qr',
      onGenerateRoute: RouteGenerator.generateRoute,
      debugShowCheckedModeBanner: false,

      /// Uncomment this for performance profiling
      // showPerformanceOverlay: true,
    );
  }
}