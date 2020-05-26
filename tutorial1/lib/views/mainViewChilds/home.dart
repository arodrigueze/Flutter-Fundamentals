import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homeChilds/HomeHeader.dart';
import 'homeChilds/favorite.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HomeHeader(),
        Container(
          height: 40,
          padding: EdgeInsets.only(top: 15),
          child: Center(
            child: Text(
              'Welcome',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FavoriteView(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
