import 'package:flutter/cupertino.dart';

class AppConstants extends InheritedWidget {
  static AppConstants of(BuildContext context) => context. dependOnInheritedWidgetOfExactType<AppConstants>();

  AppConstants({Widget child, Key key}): super(key: key, child: child);

  final List<String> imageList = <String>[
    'assets/images/defaultGoal.jpg',
    'assets/images/argentina.jpg',
    'assets/images/israel.jpg',
    'assets/images/lion.jpg',
    'assets/images/suiza.jpg',
    'assets/images/unicorn.jpg',
    'assets/images/vip.jpg',
  ];
  @override
  bool updateShouldNotify(AppConstants oldWidget) => false;
}