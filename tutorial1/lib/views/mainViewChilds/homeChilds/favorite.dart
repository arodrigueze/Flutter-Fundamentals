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
      child: Image.asset('assets/images/defaultGoal.jpg', fit: BoxFit.fitWidth),
      //AssetImage('assets/images/defaultGoal.jpg')
      /* child: Container(
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           image: DecorationImage(
             image: AssetImage('assets/images/defaultGoal.jpg')
           )
         )
       )*/
    );
  }

  Widget _getFavoriteGoalData(BuildContext context) {
    var goalsState = Provider.of<GoalsState>(context);
    print(goalsState.favoriteGoal);

    return Flexible(
        flex: 1,
        child: Text('Goalasdasdas asd qw qw eq we qwe qw e asd asd as das d'));
  }

  @override
  Widget build(BuildContext context) {
    //var bottomNavigationState = Provider.of<BottomNavigationState>(context);
    //var goalsState = Provider.of<GoalsState>(context);

    return Container(
      color: Colors.redAccent,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _getFavoriteGoalImage(context),
          _getFavoriteGoalData(context),
        ],
      ),
    );
  }
}
