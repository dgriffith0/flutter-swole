import 'package:flutter/material.dart';

import './workouts.dart';
import './profile.dart';
import './charts.dart';


class Home extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Workouts(),
    Charts(),
    Profile()
  ];

 @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
      appBar: AppBar(
        title: Text('Swole'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.pie_chart),
            title: new Text('Charts')
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            title: new Text('Profile')
          )
        ],
      ),
      body: _children[_currentIndex]
    ));
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}