import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial1/state/bottom.navigation.state.dart';
import 'package:tutorial1/state/goal.state.dart';

class FavoriteView extends StatelessWidget {

  Widget _getFavoriteGoalImage(BuildContext context) {
    return Text('Image');
  }
  Widget _getFavoriteGoalData(BuildContext context) {
    return Text('Goal');
  }

  @override
  Widget build(BuildContext context) {
    var bottomNavigationState = Provider.of<BottomNavigationState>(context);
    var goalsState = Provider.of<GoalsState>(context);

    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _getFavoriteGoalImage(context),
            _getFavoriteGoalData(context),
          ],
        ),
      )
    );
  }
}
