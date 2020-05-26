import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/constants/constants.dart';
import 'package:kidapp/state/cash.state.dart';
import 'package:kidapp/state/requirements.state.dart';
import 'package:kidapp/views/goal.images.dart';
import 'package:provider/provider.dart';
import 'common/themes.dart';
import 'state/bottom.navigation.state.dart';
import 'state/goal.state.dart';
import 'views/mainView.dart';

void main() {
  runApp(
    AppConstants(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GoalsState()),
        ChangeNotifierProvider(create: (context) => CashState()),
        ChangeNotifierProvider(create: (context) => RequirementsState()),
        ChangeNotifierProvider(create: (context) => BottomNavigationState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Child Application',
        theme: appTheme,
        initialRoute: '/main',
        routes: {
          //'/': (context) => LogIn(),
          '/main': (context) => MainView(),
          '/goalImage': (context) => GoalImage(),
        },
      ),
    );
  }
}