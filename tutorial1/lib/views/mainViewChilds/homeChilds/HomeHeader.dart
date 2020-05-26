import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/state/bottom.navigation.state.dart';
import 'package:provider/provider.dart';

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
        child: Text('Andres Rodriguez'));
  }

  Widget _notification(BuildContext context) {
    var bottomNavigationState = Provider.of<BottomNavigationState>(context);
    switch (bottomNavigationState.selectedPage) {
      case 3:
        return Container(
          margin: const EdgeInsets.only(right: 20.0),
          child: Icon(
            Icons.add,
            size: 40,
            color: Colors.purpleAccent,
          ),
        );
        break;
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _user(context),
              _userName(context),
              Spacer(flex: 1),
              _notification(context),
            ],
          )
        ],
      ),
    );
  }
}
