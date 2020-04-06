import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial1/state/bottom.navigation.state.dart';
import 'BottomNavBar.dart';

class MainView extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    var bottomNavigationState = Provider.of<BottomNavigationState>(context);
    bottomNavigationState.setPageController(_pageController);
    
    return Scaffold(
        appBar: AppBar(title: const Text('Kid´s Goealss')),
        body: PageView(
          controller: _pageController,
          children: bottomNavigationState.mainPages
          ),
        bottomNavigationBar: BottomNavBar());
  }
}
