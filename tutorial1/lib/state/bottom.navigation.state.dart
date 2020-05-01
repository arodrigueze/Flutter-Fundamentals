import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../views/mainViewChilds/goals.dart';
import '../views/mainViewChilds/home.dart';

class BottomNavigationState extends ChangeNotifier {
  int _selected = 1;
  PageController _pageController;

  List<Widget>  pages = [
    Home(),
    Home(),
    Goals(),
    Home()
  ];

  List<Widget> get mainPages  => pages;
  int get selectedPage => _selected;

  void selectItemMenu(int index) {
    _selected = index;
    _pageController.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeOut);
    notifyListeners();
  }

  void setPageController(PageController controller) {
    _pageController = controller;
  }
}