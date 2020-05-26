import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CircleImage {
  double imageSize;
  var urlImage;
  var context;

  CircleImage(context, urlImage, size) {
    this.urlImage = urlImage;
    this.imageSize = size;
    this.context = context;
  }

  Widget get circleImage {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(this.context, '/goalImage');
      },
      child: Container(
        margin: EdgeInsets.all(30),
        width: this.imageSize,
        height: this.imageSize,
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.circular(75),
          image: DecorationImage(
              image: AssetImage(this.urlImage), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
