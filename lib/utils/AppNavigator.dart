import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppNavigator {
  AppNavigator._();

  static void replace(BuildContext context, Widget widget) {
    Widget _pageBuilder (context) => widget;
    Navigator.pushReplacement(
        context,
        Platform.isIOS
            ? CupertinoPageRoute(builder: _pageBuilder)
            : MaterialPageRoute(builder: _pageBuilder));
  }

  static Future push(BuildContext context, Widget widget) {
    Widget _pageBuilder  (context) => widget;
    return Navigator.push(
        context,
        Platform.isIOS
            ? CupertinoPageRoute(builder: _pageBuilder)
            : MaterialPageRoute(builder: _pageBuilder));
  }

  static void pushNamed(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }
}
