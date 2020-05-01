import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'common/themes.dart';
import 'state/bottom.navigation.state.dart';
import 'state/goal.state.dart';
import 'views/logIn.dart';
import 'views/mainView.dart';

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
        initialRoute: '/main',
        routes: {
          //'/': (context) => LogIn(),
          '/main': (context) => MainView(),
          //'/cart': (context) => MyCart(),
        },
      ),
    );
  }
}