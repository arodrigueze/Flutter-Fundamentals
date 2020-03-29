import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial1/state/bottom.navigation.state.dart';
import 'package:tutorial1/state/goal.state.dart';
import 'package:tutorial1/views/logIn.dart';
import 'package:tutorial1/views/mainView.dart';

import 'common/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GoalsState()),
        ChangeNotifierProvider(create: (context) => BottomNavigationState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Child Application',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => LogIn(),
          '/main': (context) => MainView(),
          //'/cart': (context) => MyCart(),
        },
      ),
    );
  }
}