import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kidapp/common/circle.image.dart';
import 'package:kidapp/common/goal.actions.dart';
import 'package:kidapp/common/goal.data.dart';
import 'package:kidapp/common/linear.progress.bar.dart';
import 'package:kidapp/constants/constants.dart';
import 'package:kidapp/state/cash.state.dart';
import 'package:kidapp/state/goal.state.dart';
import 'package:provider/provider.dart';

class ListCommonWidgets {
  double imageSize;
  var urlImage;

  ListCommonWidgets();

  List<Widget> getRequirementsWidgets(List requirementList) {
    return requirementList
        .map((e) => Container(
              margin: EdgeInsets.only(left: 30, top: 15, right: 10),
              height: 30,
              child: Row(
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(right: 30),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(e),
                    ),
                  )
                ],
              ),
            ))
        .toList();
  }

  List<Widget> getSummaryGoalsWidgets(context) {
    var goalsState = Provider.of<GoalsState>(context);
    var cashState = Provider.of<CashState>(context);
    return goalsState.goals
        .map((e) => Container(
              margin: EdgeInsets.only(top: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 180,
                    child: Row(
                      children: <Widget>[
                        CircleImage(context, AppConstants.of(context).imageList[e.image], 100.0)
                            .circleImage,
                        GoalData(context, e).goalData
                      ],
                    ),
                  ),
                  LinearProgressBar(cashState.total, e.price).progressBar,
                  Container(height: 5,),
                  GoalActions().goalActions,
                ],
              ),
            ))
        .toList();
  }
}
