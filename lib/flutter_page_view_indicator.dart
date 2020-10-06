import 'package:flutter/material.dart';

class PageViewIndicator extends StatefulWidget {
  ///[length] is how match pages in the [PageView].
  final int length;

  ///[currentIndex] is a current index of the [PageView].
  final int currentIndex;

  ///[currentColor] is a current index color of the [PageView].
  final Color currentItemColor;

  ///[otherColor] is a other index color of the [PageView].
  final Color otherItemColor;

  ///[currentItemWidth] is a normal width, need it to define a indicators width of the [currentIndex].
  final double currentItemWidth;

  ///[currentItemHeight] is a normal height, need it to define a indicators height of the [currentIndex].
  final double currentItemHeight;

  ///[otherItemWidth] is a normal width, need it to define a indicators width of the [otherIndex].
  final double otherItemWidth;

  ///[otherItemHeight] is a normal height, need it to define a indicators height of the [otherIndex].
  final double otherItemHeight;

  ///[indicatorMargin] is a margin around each indicator.
  final EdgeInsets indicatorMargin;

  ///[borderRadius] is need to define a border radius of each indicator.
  final BorderRadius borderRadius;

  PageViewIndicator({
    @required this.length,
    @required this.currentIndex,
    this.currentItemColor = Colors.blue,
    this.otherItemColor = Colors.grey,
    this.currentItemWidth = 15,
    this.currentItemHeight = 15,
    this.otherItemWidth = 8,
    this.otherItemHeight = 8,
    this.indicatorMargin,
    this.borderRadius,
  });

  @override
  _PageViewIndicatorState createState() => _PageViewIndicatorState();
}


class _PageViewIndicatorState extends State<PageViewIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
