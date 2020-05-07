import 'package:flutter/foundation.dart';

class CashState extends ChangeNotifier {
  double _total = 2000.0;

  double get total => _total;

  void changeTotal(double total) {
    _total = _total + total;
    notifyListeners();
  }
}
