import 'package:flutter/material.dart';

import '../models/workout.dart';

class WorkoutForm extends StatefulWidget {
final Function _addWorkout;
final Function _deleteWorkout;

  WorkoutForm(this._addWorkout, this._deleteWorkout);

  @override
  _WorkoutFormState createState() => _WorkoutFormState();
}

class _WorkoutFormState extends State<WorkoutForm> {
  final _formKey = GlobalKey<FormState>();
  String _description;
  String _weight;
  int _quantity;
  int counter = 0;

  void _submitForm() {
    if (!_formKey.currentState.validate()) {
      return;
    }
    _formKey.currentState.save();
    final Workout workout = new Workout(id: counter, description: _description, weight: _weight, quantity: _quantity);
    setState(() {
          counter = counter + 1;
        });
        print(counter);
    widget._addWorkout(workout);
    FocusScope.of(context).requestFocus(FocusNode());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
          Row(children: <Widget>[
            new Flexible(child: TextFormField(
              decoration: InputDecoration(labelText: 'Workout'),
              validator: (String value) {
                if (value.isEmpty) {
                  return 'Workout description is required.';
                }
              },
              onSaved: (String value) {
                _description = value;
              },
            ),)
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[       
              new Flexible(child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Weight'),
                onSaved: (String value) {
                _weight = value;
              },
              )),
              new SizedBox(width: 10.0),
              new Flexible(child: TextFormField(
                keyboardType: TextInputType.numberWithOptions(),
                decoration: InputDecoration(labelText: 'Quantity'),
                onSaved: (String value) {
                  _quantity = int.parse(value);
                },
              )), 
              new SizedBox(width: 10.0),
              new Flexible(
                child: RaisedButton(onPressed: () {
                  _submitForm();
                }, child: Text('Add'))
              )         
            ],
          )
        ])
      )
    );
  }
}