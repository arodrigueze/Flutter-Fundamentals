import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:kidapp/views/mainViewChilds/goals.dart';
import 'package:kidapp/views/mainViewChilds/home.dart';

class BottomNavigationState extends ChangeNotifier {
  int _selected = 2;
  PageController _pageController = PageController(initialPage: 2);
  List<Widget>  pages = [
    Container(),
    Container(),
    Home(),
    Goals(),
    Container()
  ];

  List<Widget> get mainPages  => pages;
  int get selectedPage => _selected;
  PageController get pageController => _pageController;

  selectPage(int index) {
    _selected = index;
    notifyListeners();
  }

  void selectItemMenu(int index) {
    _selected = index;
    _pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeOut);
    notifyListeners();
  }

}