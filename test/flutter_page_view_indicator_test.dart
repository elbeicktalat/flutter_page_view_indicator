import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_page_view_indicator/flutter_page_view_indicator.dart';

void main() {
  const MethodChannel channel = MethodChannel('flutter_page_view_indicator');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FlutterPageViewIndicator.platformVersion, '42');
  });
}
