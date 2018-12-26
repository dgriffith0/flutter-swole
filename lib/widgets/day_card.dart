import 'package:flutter/material.dart';

import '../helpers.dart';

class DayCard extends StatelessWidget {
  final DateTime _date;
  final bool isSelected;
  final Function setDate;

  DayCard(this._date, this.isSelected, this.setDate);

  Color setSelectedColor() {
    Color color; 
    isSelected ? color = Colors.green : color = Colors.transparent;
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: <Widget>[
          Text(getWeekDayName(_date.weekday)),
          Container(
            decoration: BoxDecoration(
              color: setSelectedColor(),
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(10.0),
            child: Text(_date.day.toString())
          )        
        ],
      ),
      onTap: () {
        setDate(_date);
      },
    );
  }
}