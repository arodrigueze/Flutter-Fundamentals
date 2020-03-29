import 'package:flutter/foundation.dart';
import 'package:tutorial1/model/goal.model.dart';

class GoalsState extends ChangeNotifier {
  List<Goal> _goals = [];

  List<Goal> get goals => _goals;

  void add(Goal goal) {
    _goals.add(goal);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void removeAll() {
    _goals.clear();
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}