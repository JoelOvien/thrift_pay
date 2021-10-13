import 'package:flutter/material.dart';

class XMargin extends StatelessWidget {
  final double x;
  const XMargin(this.x, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: x);
  }
}

class YMargin extends StatelessWidget {
  final double y;
  const YMargin(this.y, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: y);
  }
}

double screenHeight(BuildContext context, {double percent = 1}) =>
    MediaQuery.of(context).size.height * percent;

double screenWidth(BuildContext context, {double percent = 1}) =>
    MediaQuery.of(context).size.width * percent;

double height(BuildContext context, {double percent = 1}) => MediaQuery.of(context).size.height;
double width(BuildContext context, {double percent = 1}) => MediaQuery.of(context).size.width;
