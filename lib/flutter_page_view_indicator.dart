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

  ///[currentItemWidth] is a normal width, need it to define a indicators
  ///width of the [currentIndex], the default value is [15.0].
  final double currentItemWidth;

  ///[currentItemHeight] is a normal height, need it to define a indicators
  /// height of the [currentIndex], the default value is [15.0].
  final double currentItemHeight;

  ///[otherItemWidth] is a normal width, need it to define a indicators
  /// width of the [otherIndex],  the default value is [8.0].
  final double otherItemWidth;

  ///[otherItemHeight] is a normal height, need it to define a indicators
  /// height of the [otherIndex],  the default value is [8.0].
  final double otherItemHeight;

  ///[indicatorMargin] is a margin around each indicator,
  /// the default value is [EdgeInsets.all(5)].
  final EdgeInsets indicatorMargin;

  ///[borderRadius] Defines a border radius of each indicator,
  /// the default value is [BorderRadius.circular(9999)].
  final BorderRadius borderRadius;

  ///[alignment] is a normal alignment, define How the children should be placed
  ///along the main axis in a flex layout,
  ///the default value is [MainAxisAlignment.center].
  final MainAxisAlignment alignment;

  ///[animationDuration] Defines how long does the animation,
  /// the default value is [500 milliseconds].
  final Duration animationDuration;

  ///[orientation] Defines the indicators orientation,
  /// the default value is [Axis.horizontal].
  final Axis orientation;

  PageViewIndicator({
    @required this.length,
    @required this.currentIndex,
    this.currentItemColor = Colors.blue,
    this.otherItemColor = Colors.grey,
    this.currentItemWidth = 15.0,
    this.currentItemHeight = 15.0,
    this.otherItemWidth = 8.0,
    this.otherItemHeight = 8.0,
    this.indicatorMargin,
    this.borderRadius,
    this.alignment = MainAxisAlignment.center,
    this.animationDuration,
    this.orientation = Axis.horizontal,
  });

  @override
  _PageViewIndicatorState createState() => _PageViewIndicatorState();
}

class _PageViewIndicatorState extends State<PageViewIndicator> {
  @override
  Widget build(BuildContext context) {
    List<Widget> indicators = List<Widget>();
    for (int i = 0; i < widget.length; i++) {
      indicators.add(
        AnimatedContainer(
          duration: (widget.animationDuration != null)
              ? widget.animationDuration
              : Duration(milliseconds: 500),
          decoration: BoxDecoration(
            borderRadius: (widget.borderRadius != null)
                ? widget.borderRadius
                : BorderRadius.circular(9999),
            color: (i == widget.currentIndex)
                ? widget.currentItemColor
                : widget.otherItemColor,
          ),
          margin: (widget.indicatorMargin != null)
              ? widget.indicatorMargin
              : EdgeInsets.all(5),
          width: (i == widget.currentIndex)
              ? widget.currentItemWidth
              : widget.otherItemWidth,
          height: (i == widget.currentIndex)
              ? widget.currentItemHeight
              : widget.otherItemHeight,
        ),
      );
    }
    if (widget.orientation != Axis.horizontal) {
      return Column(
        mainAxisAlignment: widget.alignment,
        children: indicators,
      );
    }
    return Row(
      mainAxisAlignment: widget.alignment,
      children: indicators,
    );
  }
}
