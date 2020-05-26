import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/state/bottom.navigation.state.dart';
import 'package:provider/provider.dart';


class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bottomNavigationState = Provider.of<BottomNavigationState>(context);
    return BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            title: Text(''),
          )
        ],
        currentIndex: bottomNavigationState.selectedPage,
        selectedItemColor: Colors.amber[800],
        type: BottomNavigationBarType.fixed,
        onTap: bottomNavigationState.selectItemMenu);
  }
}
