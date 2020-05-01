import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../views/mainViewChilds/homeChilds/favorite.dart';
import 'homeChilds/HomeHeader.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HomeHeader(),
        Container(
          child: Text(
            'Welcome',
             style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
        ),
        Flexible(
          flex: 1,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: FavoriteView(),
              ),
              Flexible(
                flex: 1,
                child: FavoriteView(),
              )
            ],
          ),
        )
      ],
    );
  }
}
