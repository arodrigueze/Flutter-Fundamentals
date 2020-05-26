import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GoalActions {


  GoalActions() {
    
  }

  Widget get goalActions {
   return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 40,
                width: 110,
                color: Colors.red,
                child: RaisedButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('See More'),
                  onPressed: () => {print('See more')},
                ),
              ),
              Container(
                height: 40,
                width: 110,
                color: Colors.red,
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text('Add Money'),
                  onPressed: () => {print('Add money')},
                ),
              ),
            ],
          ); 
  }
}
