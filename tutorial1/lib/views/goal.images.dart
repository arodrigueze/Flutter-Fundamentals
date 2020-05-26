import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kidapp/common/circle.image.dart';
import 'package:kidapp/constants/constants.dart';

class GoalImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageList = AppConstants.of(context).imageList;
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Selection'),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: imageList.map((e) {
                  return CircleImage(context, e, 100.0).circleImage;
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
