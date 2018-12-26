import 'package:flutter/material.dart';
import './day_card.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _selectedDate = DateTime.now();

  changeDate(DateTime date) {
    setState(() {
          _selectedDate = date;
        });
  }

  _changeDate(DateTime date) {
    setState(() {
          _selectedDate = date;
        });
  }

  List<DayCard> _setupDayCards() {
      List<DayCard> dayCards = [];
      for(int i = -3 ; i <= 3; i++) { 
        dayCards.add(DayCard(_selectedDate.add(Duration(days: i)), i==0, _changeDate));
      } 
      return dayCards;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Row(
        children: _setupDayCards(),
        mainAxisAlignment: MainAxisAlignment.spaceAround
      )
    );
  }
}