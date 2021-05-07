# Flutter PageViewIndicator
[![Pub Version](https://img.shields.io/pub/v/flutter_page_view_indicator?color=blue&logo=dart)](https://pub.dev/packages/flutter_page_view_indicator)

Builds indicators marks for PageView from any widget it's very customizable.

To get started you need to install our plugin and that's very easy
## Installation

1) add this to your packages pubspec.yaml file: 
```yaml
dependencies:
  flutter_page_view_indicator: ^0.0.5
```

2) Install it 
You can install it from the command line:
```
$ flutter pub get
```
if you use Android Studio or Intellij just click pub get.

3) Import it 
Now in Dart code, you can use:
```dart
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';
```

## Using
 
You need to use just the following code: 
```dart
PageViewIndicator(
    length: screens.length,
    currentIndex: currentIndex,
),
```
![Example 1](example1.gif)

this a default indicators, when you want to customize the indicators 
you can do it just passing a property which you want.

```dart
PageViewIndicator(
   length: length,
   currentIndex: currentIndex,
   otherItemWidth: 20,
   otherItemHeight: 8,
),
```
![Example 2](example2.gif)

```dart
PageViewIndicator(
   length: length,
   currentIndex: currentIndex,
   indicatorMargin: EdgeInsets.all(5),
   borderRadius: BorderRadius.circular(5),
),
```
![Example 3](example3.gif)

This an Example of a full property :
```dart
PageViewIndicator(
   length: screens.length,
   currentIndex: currentIndex,
   currentColor: Colors.teal,
   otherColor: Colors.grey.shade800,
   currentSize: 15,
   otherSize: 15,
   margin: EdgeInsets.all(5),
   borderRadius: 9999.0,
   alignment: MainAxisAlignment.center,
   animationDuration: Duration(milliseconds: 750),
   direction: Axis.horizontal,
),
```
So how did you see you do not need to write too much code in the first case if you use the default indicators.
