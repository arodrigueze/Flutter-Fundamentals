import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:kidapp/model/goal.model.dart';

class GoalsState extends ChangeNotifier {
  final _emptyGoal = new Goal('-1', '', '', 0.0, new DateTime.now(), 6, false);
  final Goal _currentGoal = new Goal('1', 'Kid App', 'First new Flutter app',
      1550.0, new DateTime.now(), 1, true);
  List<Goal> _goals = [];
  Goal _favorite;

  GoalsState() {
    _favorite = _emptyGoal;
    this.add(_currentGoal);
    this.add(new Goal(
        '2', 'Nintendo', 'Nintendo Switch', 550.0, new DateTime.now(),2, false));
    this.add(new Goal(
        '3', 'Football', 'Nintendo Switch', 150.0, new DateTime.now(),3, false));
    this.add(new Goal(
        '4', 'Skate', 'Nintendo Switch', 2000.0, new DateTime.now(),4, false));
    this.add(new Goal(
        '5', '1 Million Dollars', 'Nintendo Switch', 0, new DateTime.now(),5, false));
    this.add(new Goal(
        '6', 'Cloths', 'Nintendo Switch', 1550.0, new DateTime.now(),1, false));
    this.add(new Goal(
        '7', 'Pass the scholar year', 'Nintendo Switch', 550.0, new DateTime.now(),2, false));
    this.add(new Goal(
        '8', 'girlfrind', 'Nintendo Switch', 1800.0, new DateTime.now(), 4, false));
    this.add(new Goal(
        '9', 'Europe Trip', 'Nintendo Switch', 550.0, new DateTime.now(), 5, false));
  }

  void setDate(DateTime expectedDate, String id) {
    _goals.firstWhere((e) => e.id == id).expectedDate = expectedDate;
    notifyListeners();
  }

  void add(Goal goal) {
    _goals.add(goal);
    if (goal.favorite) _favorite = goal;
    notifyListeners();
  }

  void removeAll() {
    _goals.clear();
    _favorite = _emptyGoal;
    notifyListeners();
  }

  List<Goal> get goals => _goals;
  Goal get favoriteGoal => _favorite;
  Goal goal(id) => _goals.firstWhere((e) => e.id == id);
}
