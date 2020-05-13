import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kidapp/model/requirements.model.dart';

class RequirementsState extends ChangeNotifier {
  List<Requirements> _requirements = [];

  RequirementsState() {
    this.add('1', '1 Arreglar el cuarto');
    this.add('1', '2 Ahorrar money');
    this.add('1', '3 Ahorrar money');
    this.add('1', '4 Ahorrar money');
    this.add('1', '5 Ahorrar money');
    this.add('1', '6 Ahorrar money');
    this.add('1', '7 Ahorrar money');
    this.add('1', '8 Ahorrar money');
    this.add('1', '9 Ahorrar money');
    this.add('1', '10 Ahorrar money');
    this.add('1', '11 Ahorrar money');
    this.add('1', '12 Ahorrar money');
    this.add('1', '13 Ahorrar money');
    this.add('1', '14 Ahorrar money');
    this.add('1', '15 Ahorrar money');
    this.add('1', '16 Ahorrar money');
    this.add('1', '17 Ahorrar money');
    this.add('1', '18 Ahorrar money');
    this.add('1', '19 Ahorrar money');
    this.add('1', '20 Ahorrar money');
    this.add('1', '21 Ahorrar money');
    this.add('1', '22 Ahorrar money');
    this.add('1', '23 Ahorrar money');
  }

  Requirements getRequirements(String goalId) {
    return _requirements.firstWhere((element) => element.goalId == goalId,
        orElse: () => Requirements('', []));
  }

  List<Widget> getRequirementsWidgets(String goalId) {
    return _requirements
        .firstWhere((element) => element.goalId == goalId)
        .requirementList
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

  void add(String goalId, String requirement) {
    final requirements = _requirements.firstWhere(
        (element) => element.goalId == goalId,
        orElse: () => Requirements('', []));
    if (requirements.goalId == '') {
      _requirements.add(Requirements(goalId, []));
      _requirements
          .firstWhere((element) => element.goalId == goalId)
          .requirementList
          .add(requirement);
    } else {
      requirements.requirementList.add(requirement);
    }
    notifyListeners();
  }
}
