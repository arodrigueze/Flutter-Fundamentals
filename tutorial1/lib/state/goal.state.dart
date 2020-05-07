import 'package:flutter/foundation.dart';
import '../model/goal.model.dart';

class GoalsState extends ChangeNotifier {
  final _emptyGoal = new Goal('-1', '', '', 0.0, new DateTime.now(), false);
  final Goal _currentGoal =
      new Goal('1', 'Kid App', 'First new Flutter app', 1550.0, new DateTime.now(), true);
  List<Goal> _goals = [];
  Goal _favorite;

  List<Goal> get goals => _goals;
  Goal get favoriteGoal => _favorite;

  GoalsState() {
    _favorite = _emptyGoal;
    this.add(_currentGoal);
  }

  void setFavoriteDate(DateTime expectedDate) {
    _favorite.expectedDate = expectedDate;
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
}
