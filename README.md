# Flutter PageViewIndicator

Builds indicators marks for PageView from any widget very customizable.

To get started you need to install our plugin and that's very easy
## Installation

- add this to your packages pubspec.yaml file: 
```
flutter_page_view_indicator: ^0.0.1
```

- Install it 
You can install it from the command line:
```
$ flutter pub get
```
if you use Android Studio or Intellij just click pub get.

- Import it 
Now in Dart code, you can use:
```
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';
```

## Using
 
You need to use just the following code: 
```
PageViewIndicator(
    length: screens.length,
    currentIndex: currentIndex,
),
```
this a default indicators, when you want to customize the indicators 
you can do it just passing a Features which you want.

This an Example of a full features :
```
PageViewIndicator(
    length: screens.length,
    currentIndex: currentIndex,
    currentItemColor: Colors.teal,
    otherItemColor: Colors.grey.shade800,
    currentItemWidth: 15,
    currentItemHeight: 15,
    otherItemWidth: 15,
    otherItemHeight: 15,
    indicatorMargin: EdgeInsets.all(5),
    borderRadius: BorderRadius.circular(9999),
),
```
So how did you see you do not need to write too much code in the first case if you use the default indicators.
