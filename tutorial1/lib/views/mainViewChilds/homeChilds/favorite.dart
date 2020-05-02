import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../state/goal.state.dart';
import '../../../state/bottom.navigation.state.dart';

class FavoriteView extends StatelessWidget {
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
                  fit: BoxFit.fill)),
        ));
  }

  Widget _getFavoriteGoalData(BuildContext context) {
    var goalsState = Provider.of<GoalsState>(context);
    return Flexible(
        flex: 1,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          child: Column(
            children: <Widget>[
              Spacer(flex: 2,),
              Text('Goal', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20 )),
              Text(goalsState.favoriteGoal.name, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
              Spacer(flex: 1,),
              Text('Description', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Text(goalsState.favoriteGoal.description, style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15)),
              Spacer(flex: 2,),

            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    //var bottomNavigationState = Provider.of<BottomNavigationState>(context);
    //var goalsState = Provider.of<GoalsState>(context);

    return Container(
      height: 220,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _getFavoriteGoalImage(context),
          _getFavoriteGoalData(context),
        ],
      ),
    );
  }
}
