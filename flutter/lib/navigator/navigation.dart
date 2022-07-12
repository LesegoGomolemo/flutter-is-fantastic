import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_is_fantastic/navigator/routes.dart';
import 'package:flutter_is_fantastic/screens/dashboard.dart';
import 'package:flutter_is_fantastic/screens/login.dart';

class Navigation {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (_) {
        switch (settings.name) {
          case Routes.LOGIN_SCREEN:
            return const Login();
          case Routes.DASHBOARD:
            return const Dashboard();
          default:
            return errorWidget;
        }
      }
    );
  }

  static Scaffold get errorWidget => Scaffold(
    appBar: AppBar(
      title: const Text("Navigation Error"),
    ),
    body: const Center(
      child: Text("Navigation ERROR"),
    )
  );
}