import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/state/goal.state.dart';
import 'package:provider/provider.dart';

class LinearProgressBar {
  double totalCash, goalCash;

  LinearProgressBar(double totalCash, double goalCash) {
    this.totalCash = totalCash;
    this.goalCash = goalCash;
  }

  Widget get progressBar {
    return FractionallySizedBox(
      widthFactor: 1,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            height: 25,
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: FractionallySizedBox(
                widthFactor: this.goalCash / this.totalCash,
                heightFactor: 0.7,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 30, top: 10),
                child: Text('\$' + this.goalCash.toString() + ' of \$' + this.totalCash.toString(),
                    style:
                        TextStyle(fontWeight: FontWeight.w200, fontSize: 20)),
              ),
              Container(
                margin: EdgeInsets.only(right: 30, top: 10),
                child: Text( ((this.goalCash / this.totalCash) * 100).toString() + '%',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              )
            ],
          )
        ],
      ),
    );
  }
}
