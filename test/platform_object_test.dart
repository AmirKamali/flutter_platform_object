import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:platform_object/platform_object.dart';

void main() {
  test('adds one to input values', () {
    final platformString = PlatformObject(ios: "ios", android: "android").value;
    debugPrint("Hello $platformString");
    expect(platformString, "ios");
    expect(platformString, "android");
  });
}
