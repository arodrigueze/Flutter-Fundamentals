import 'package:flutter/foundation.dart';
import 'package:tutorial1/model/goal.model.dart';

class GoalsState extends ChangeNotifier {
  List<Goal> _goals = [];
  Goal _favorite;

  List<Goal> get goals => _goals;
  Goal get favoriteGoal => _favorite;

  void add(Goal goal) {
    _goals.add(goal);
    if(goal.favorite) _favorite = goal;
    notifyListeners();
  }

  void removeAll() {
    _goals.clear();
    
    notifyListeners();
  }
}