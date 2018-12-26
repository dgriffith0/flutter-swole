import 'package:flutter/material.dart';

import '../models/workout.dart';

class WorkoutList extends StatelessWidget {
  final List<Workout> _workouts;

  WorkoutList(this._workouts);

  _buildWorkoutList() {
    List<Widget> workoutWidgets = [];
    if (_workouts.isNotEmpty) {
      _workouts.forEach((workout) => 
        workoutWidgets.add(
          Card(
            margin: EdgeInsets.all(5.0),
            child: Container(
              padding: EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                children: <Widget>[  
                  Column(children: <Widget>[
                    Icon(IconData(0xe01b, fontFamily: 'MaterialIcons')),
                    Text(DateTime.now().toString())
                  ],),        
                  Column(
                    children: <Widget>[
                    Text(workout.description, style: TextStyle(fontWeight: FontWeight.bold),),
                    Container(padding: EdgeInsets.fromLTRB(0, 0, 0, 5.0)),
                    Row(children: <Widget>[
                      Text(workout.quantity.toString()),
                      Text(" x "),
                      Text(workout.weight.toString()),
                    ],)
                  ],),
                  Container(width: 35.0, height: 35.0, color: Colors.red)              
                 ],
              ),
            ),
          )
        )
      );    
    }
    return workoutWidgets;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _buildWorkoutList(),
    );
  }
}