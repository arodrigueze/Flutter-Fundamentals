import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/bottom.navigation.state.dart';

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
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text(''),
          )
        ],
        currentIndex: bottomNavigationState.selectedPage,
        selectedItemColor: Colors.amber[800],
        type: BottomNavigationBarType.fixed,
        onTap: bottomNavigationState.selectItemMenu);
  }
}
