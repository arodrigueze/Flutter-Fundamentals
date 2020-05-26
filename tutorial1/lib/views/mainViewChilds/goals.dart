import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/common/lists.common.widgets.dart';
import 'homeChilds/HomeHeader.dart';

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              HomeHeader(),
              Container(
                height: 40,
                padding: EdgeInsets.only(top: 15),
                child: Center(
                  child: Text(
                    'My Goals',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ),
              Expanded(
                flex: 10,
                child: ListView(
                  padding: EdgeInsets.all(0),
                  children: ListCommonWidgets().getSummaryGoalsWidgets(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
