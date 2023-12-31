import 'package:flutter/material.dart';

class AppRouter {
  AppRouter._();

  // static final routes = [
  //   GetPage(name: name, page: page)
  // ];

  static  go(context, Widget screen) {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }
}
