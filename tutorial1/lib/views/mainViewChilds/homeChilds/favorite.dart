import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/common/linear.progress.bar.dart';
import 'package:kidapp/state/cash.state.dart';
import 'package:provider/provider.dart';
import '../../../state/goal.state.dart';
import '../../../state/bottom.navigation.state.dart';

class FavoriteView extends StatelessWidget {
  void _loadDatePicker(context) async {
    var goalsState = Provider.of<GoalsState>(context);
    final DateTime datePicked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2090));
    if (datePicked != null) {
      goalsState.setFavoriteDate(datePicked);
    }
  }

  Widget _getFavoriteGoalImage(
    BuildContext context,
  ) {
    return Flexible(
      flex: 1,
      child: Container(
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(1050),
          image: DecorationImage(
              image: AssetImage('assets/images/defaultGoal.jpg'),
              fit: BoxFit.fill),
        ),
      ),
    );
  }

  Widget _getFavoriteGoalData(BuildContext context) {
    var goalsState = Provider.of<GoalsState>(context);
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Icon(
                Icons.star,
                size: 40,
                color: Colors.purpleAccent,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Goal',
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20)),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(goalsState.favoriteGoal.name,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
            ),
            Spacer(
              flex: 1,
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
                              fontWeight: FontWeight.w200, fontSize: 20),
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Consumer<GoalsState>(
                            builder: (context, goal, child) {
                              return Text(
                                  DateFormat('dd / MM / yyyy')
                                      .format(goal.favoriteGoal.expectedDate),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 15));
                            },
                          ))
                    ],
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.date_range,
                        size: 40, color: Colors.purpleAccent),
                    onPressed: () {
                      _loadDatePicker(context);
                    })
              ],
            ),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var cashState = Provider.of<CashState>(context);
    var goalsState = Provider.of<GoalsState>(context);
    return Column(
      children: <Widget>[
        Container(
          height: 220,
          child: Row(
            children: <Widget>[
              _getFavoriteGoalImage(context),
              _getFavoriteGoalData(context)
            ],
          ),
        ),
        LinearProgressBar(cashState.total, goalsState.favoriteGoal.price)
            .progressBar,
      ],
    );
  }
}
