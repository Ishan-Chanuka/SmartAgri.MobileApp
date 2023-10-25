import 'package:flutter/material.dart';
import 'package:smartagri/screens/distributor_home.dart';
import 'package:smartagri/screens/farmer_home.dart';
import 'package:smartagri/screens/login_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => loginScreen());
      case '/farmer_home':
        return MaterialPageRoute(builder: (_) => Farmer_Home());
      case '/distributor_home':
        return MaterialPageRoute(builder: (_) => Distributor_Home());

      default:
        return MaterialPageRoute(builder: (_) => loginScreen());
    }
  }
}
