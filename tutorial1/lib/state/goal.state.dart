import 'package:flutter/foundation.dart';
import '../model/goal.model.dart';

class GoalsState extends ChangeNotifier {
  final _emptyGoal = new Goal('-1', '', '', 0, false);
  final Goal _currentGoal =
      new Goal('1', 'Kid App', 'First new Flutter app', 1000000, true);
  List<Goal> _goals = [];
  Goal _favorite;

  List<Goal> get goals => _goals;
  //Goal get favoriteGoal => _favorite;
  String get favoriteGoal =>
      '${_favorite.id} ${_favorite.name} ${_favorite.description} ${_favorite.price} ${_favorite.favorite}';

  GoalsState() {
    this.add(_currentGoal);
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
