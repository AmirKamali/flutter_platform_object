library platform_object;

import 'dart:io';
import 'package:flutter/foundation.dart';

class PlatformObject<T> {
  late final T value;
  PlatformObject(
      {T? ios,
      T? android,
      T? web,
      T? macosx,
      T? linux,
      T? windows,
      T? fuchsia}) {
    if (Platform.isAndroid && android != null) {
      value = android;
    } else if (Platform.isIOS && ios != null) {
      value = ios;
    } else if (Platform.isLinux && linux != null) {
      value = linux;
    } else if (Platform.isMacOS && macosx != null) {
      value = macosx;
    } else if (Platform.isWindows && windows != null) {
      value = windows;
    } else if (Platform.isFuchsia && fuchsia != null) {
      value = fuchsia;
    } else if (kIsWeb && web != null) {
      value = web;
    }
    assert(value != null, "Object for platform is not recognized.");
  }
}
