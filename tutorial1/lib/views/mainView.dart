import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tutorial1/common/themes.dart';
import 'package:tutorial1/state/bottom.navigation.state.dart';
import 'package:tutorial1/views/summary.dart';

class MainView extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    var bottomNavigationState = Provider.of<BottomNavigationState>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Child Application'),
        ),
        body: MaterialApp(
          theme: appTheme,
          initialRoute: '/summary',
          routes: {
            '/summary': (context) => SummaryView(),
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
           BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.monetization_on),
            title: Text(''),
          )
        ],
        currentIndex: bottomNavigationState.selectedIndex,
        selectedItemColor: Colors.amber[800],
        type: BottomNavigationBarType.fixed,
        onTap: bottomNavigationState.selectItemMenu,
        ));
  }
}

class _MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text('Catalog', style: Theme.of(context).textTheme.display4),
      floating: true,
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () => Navigator.pushNamed(context, '/'),
        ),
      ],
    );
  }
}
