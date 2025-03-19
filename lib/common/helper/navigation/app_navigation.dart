import 'package:flutter/material.dart';

class AppNavigation {
  static void pushReplacemant(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (contect) => widget));
  }

  static void push(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (contect) => widget));
  }

  static void pushAndRemove(BuildContext context, Widget widget) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (contect) => widget),
        (Route<dynamic> route) => false);
  }
}
