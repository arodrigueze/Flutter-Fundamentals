import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../state/goal.state.dart';

class HomeHeader extends StatelessWidget {
  Widget _user(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Icon(
          Icons.person_pin,
          size: 40,
          color: Colors.purpleAccent,
        ));
  }

  Widget _userName(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 20.0),
        child: Text('Andres Rodriguez')
        );
  }

  Widget _notification(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 20.0),
        child: Icon(
          Icons.notifications,
          size: 40,
          color: Colors.purpleAccent,
        ));
  }

  @override
  Widget build(BuildContext context) {
    //var bottomNavigationState = Provider.of<BottomNavigationState>(context);
    //var goalsState = Provider.of<GoalsState>(context);

    return Container(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _user(context),
          _userName(context),
          Spacer(flex: 1),
          _notification(context),
        ],
      ),
    );
  }
}
