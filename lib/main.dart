import 'package:flutter/material.dart';

import './pages/home.dart';
import './pages/profile.dart';
import './pages/charts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swole Simple',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.grey,
        accentColor: Colors.greenAccent
      ),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        '/': (BuildContext context) => Home(),
        '/profile': (BuildContext context) => Profile(),
        '/charts': (BuildContext context) => Charts(),
      },
    );
  }
}


