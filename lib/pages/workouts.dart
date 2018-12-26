import 'package:flutter/material.dart';

import '../widgets/calendar.dart';
import '../widgets/workout_form.dart';
import '../widgets/workout_list.dart';

import '../models/workout.dart';

class Workouts extends StatefulWidget {
  @override
  _WorkoutsState createState() => _WorkoutsState();
}
  
class _WorkoutsState extends State<Workouts> {
List<Workout> _workouts = [];

_addWorkout(Workout workout) {
  List<Workout> newWorkout = List.from(_workouts);
  newWorkout.add(workout);
  setState(() {
      _workouts = newWorkout;
  });
}

_deleteWorkout(int id) {
  print(id);
}
 
 @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
      Calendar(),
      WorkoutForm(_addWorkout, _deleteWorkout),
      Expanded(child: WorkoutList(_workouts))
    ]
    );
  }
}

