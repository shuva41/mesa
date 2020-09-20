import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/painting.dart';
import 'package:mesa/screens/AllCategories.dart';
import 'package:mesa/screens/HomePage.dart';
import 'package:mesa/screens/Respiratory_Care.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.white,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/categories': (context) => AllCategoriesPage(),
        '/respiratorycare': (context) => RespiratoryCarePage(),
      },
    );
  }
}
