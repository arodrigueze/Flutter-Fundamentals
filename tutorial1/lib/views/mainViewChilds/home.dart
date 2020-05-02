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
            height: 50,
            child: Center(
              child: Text('Welcome',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            )),
        Flexible(
            flex: 1,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[FavoriteView()],
              ),
            ))
      ],
    );
  }
}
