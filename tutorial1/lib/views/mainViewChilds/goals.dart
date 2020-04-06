import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial1/views/mainViewChilds/homeChilds/favorite.dart';

class Goals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text('goals'),
            ],
          ),
        )
      )
    );
  }
}
