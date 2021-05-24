import 'package:flutter/material.dart';
import 'package:moneypal/screens/PINScreen.dart';
import 'package:moneypal/screens/QRScreen.dart';
import 'package:moneypal/screens/homeScreen.dart';
import 'package:moneypal/screens/loginPage.dart';
import 'package:moneypal/screens/placeholderScreen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/pin':
        return MaterialPageRoute(builder: (_) => PINScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/qr':
        return MaterialPageRoute(builder: (_) => QRScreen());
      default:
        return MaterialPageRoute(builder: (_) => PlaceholderScreen());
    }
  }
}