import 'package:flarax/app/core/values/styles.dart';
import 'package:flutter/material.dart';

class LabelBelowIcon extends StatelessWidget {
  final label;
  final icon;
  final iconColor;
  // final onPressed;
  final circleColor;
  final isCircleEnabled;
  final betweenHeight;

  LabelBelowIcon(
      {this.label,
      this.icon,
      // this.onPressed,
      this.iconColor = Colors.white,
      this.circleColor,
      this.isCircleEnabled = true,
      this.betweenHeight = 5.0});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        isCircleEnabled
            ? CircleAvatar(
                backgroundColor: circleColor,
                radius: 20.0,
                child: Icon(
                  icon,
                  size: 12.0,
                  color: iconColor,
                ),
              )
            : Icon(
                icon,
                size: 23.0,
                color: iconColor,
              ),
        SizedBox(
          height: betweenHeight,
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(fontFamily: ralewayFont),
        )
      ],
    );
  }
}
