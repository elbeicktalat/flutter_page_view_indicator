
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPageViewIndicator {
  static const MethodChannel _channel =
      const MethodChannel('flutter_page_view_indicator');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
