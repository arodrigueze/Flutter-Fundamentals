import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:kidapp/model/goal.model.dart';
import 'package:kidapp/state/goal.state.dart';
import 'package:provider/provider.dart';

class GoalData {
  var context;
  Goal goal;
  final iconSize = 30.0;

  GoalData(context,Goal goal) {
    this.context = context;
    this.goal = goal;
  }

  void _loadDatePicker() async {
    var goalsState = Provider.of<GoalsState>(context);
    final DateTime datePicked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2090),
    );
    if (datePicked != null) {
      goalsState.setDate(datePicked, this.goal.id);
    }
  }

  Widget get goalData {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  this.goal.favorite ? Icons.star : Icons.star_border,
                  size: this.iconSize,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Goal',
                style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                this.goal.name,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 15,
                ),
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Ends on',
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Consumer<GoalsState>(
                            builder: (context, goal, child) {
                              return Text(
                                DateFormat('dd / MM / yyyy')
                                    .format(goal.goal(this.goal.id).expectedDate),
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 15,
                                ),
                              );
                            },
                          ))
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(
                      Icons.date_range,
                      size: this.iconSize,
                      color: Colors.purpleAccent,
                    ),
                    onPressed: () {
                      _loadDatePicker();
                    })
              ],
            ),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
