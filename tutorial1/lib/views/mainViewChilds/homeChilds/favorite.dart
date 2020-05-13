import 'package:intl/intl.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/common/linear.progress.bar.dart';
import 'package:kidapp/state/cash.state.dart';
import 'package:kidapp/state/requirements.state.dart';
import 'package:provider/provider.dart';
import '../../../state/goal.state.dart';

class FavoriteView extends StatelessWidget {
  final iconSize = 30.0;
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
    return Container(
      margin: EdgeInsets.all(30),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(75),
        image: DecorationImage(
            image: AssetImage('assets/images/defaultGoal.jpg'),
            fit: BoxFit.fill),
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
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.star,
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
              child: Text('Goal',
                  style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20)),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                goalsState.favoriteGoal.name,
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
                                    .format(goal.favoriteGoal.expectedDate),
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
                      _loadDatePicker(context);
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

  @override
  Widget build(BuildContext context) {
    var cashState = Provider.of<CashState>(context);
    var goalsState = Provider.of<GoalsState>(context);
    var requirementsState = Provider.of<RequirementsState>(context);
    print(requirementsState.getRequirements('1').requirementList.length);
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
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
        Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 10,
          child: ListView(
            children: requirementsState
                .getRequirementsWidgets(goalsState.favoriteGoal.id),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 50,
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
              height: 50,
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
        ),
        Spacer(
          flex: 1,
        ),
      ],
    ));
  }
}
