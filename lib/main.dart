import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'ui/pages/users_list/users_page.dart';

void main() {
  configureDependencies(Environment.test);
  runApp(EDSApp());
}

class EDSApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EDS application',
      // home: UsersPage(),
      home: UsersPage(),
      theme: ThemeData(
        backgroundColor: Colors.lightBlue,
        appBarTheme: AppBarTheme.of(context).copyWith(
          backgroundColor: Colors.blueAccent,
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 14,
            color: Colors.black26,
          ),
        ),
      ),
    );
  }
}
