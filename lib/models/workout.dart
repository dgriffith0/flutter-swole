import 'package:flutter/material.dart';

class Workout {
  final int id;
  final String description;
  final String weight;
  final int quantity;
  
  Workout(
      {
        @required this.id,
        @required this.description,
        @required this.weight,
        @required this.quantity,
      });
}
