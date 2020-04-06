import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial1/views/mainViewChilds/homeChilds/favorite.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FavoriteView(),
              Text('Craft beautiful UIs'),
            ],
          ),
        )
      )
    );
  }
}
