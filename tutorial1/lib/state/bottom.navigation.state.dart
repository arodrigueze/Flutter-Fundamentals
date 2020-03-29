import 'package:flutter/foundation.dart';

class BottomNavigationState extends ChangeNotifier {
  int _selected = 0;

  List<String>  routes = [
    'settings',
    'home',
    'goals',
    'cash'
  ];

  String get selectedRoute  => routes[_selected];
  int get selectedIndex => _selected;
  
  void selectItemMenu(int index) {
    _selected = index;
    notifyListeners();
  }
}