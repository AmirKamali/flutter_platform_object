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
    if (Platform.isAndroid) {
      value = android!;
    } else if (Platform.isIOS) {
      value = ios!;
    } else if (Platform.isLinux) {
      value = linux!;
    } else if (Platform.isMacOS) {
      value = macosx!;
    } else if (Platform.isWindows) {
      value = windows!;
    } else if (Platform.isFuchsia) {
      value = fuchsia!;
    } else if (kIsWeb) {
      value = web!;
    }
    assert(value != null, "Object for platform is not recognized.");
  }
}
