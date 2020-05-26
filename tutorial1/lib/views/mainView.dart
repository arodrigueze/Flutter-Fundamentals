import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/state/bottom.navigation.state.dart';
import 'package:provider/provider.dart';
import 'BottomNavBar.dart';

class MainView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    var bottomNavigationState = Provider.of<BottomNavigationState>(context);

    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: bottomNavigationState.pageController,
          children: bottomNavigationState.mainPages,
          onPageChanged: bottomNavigationState.selectPage,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
