import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/common/circle.image.dart';
import 'package:kidapp/common/goal.actions.dart';
import 'package:kidapp/common/goal.data.dart';
import 'package:kidapp/common/linear.progress.bar.dart';
import 'package:kidapp/common/lists.common.widgets.dart';
import 'package:kidapp/constants/constants.dart';
import 'package:kidapp/state/cash.state.dart';
import 'package:kidapp/state/goal.state.dart';
import 'package:kidapp/state/requirements.state.dart';
import 'package:provider/provider.dart';

class FavoriteView extends StatelessWidget {
  final iconSize = 30.0;

  @override
  Widget build(BuildContext context) {
    var cashState = Provider.of<CashState>(context);
    var goalsState = Provider.of<GoalsState>(context);
    var requirementsState = Provider.of<RequirementsState>(context);
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 180,
            child: Row(
              children: <Widget>[
                CircleImage(context, AppConstants.of(context).imageList[goalsState.favoriteGoal.image], 100.0).circleImage,
                GoalData(context, goalsState.favoriteGoal).goalData
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
              padding: EdgeInsets.all(0),
              children: ListCommonWidgets().getRequirementsWidgets(
                  requirementsState
                      .getRequirements(goalsState.favoriteGoal.id)
                      .requirementList),
            ),
          ),
          Container(height: 10,),
          GoalActions().goalActions,
          Container(height: 10,),
        ],
      ),
    );
  }
}
