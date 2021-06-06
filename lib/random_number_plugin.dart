
import 'dart:async';

import 'package:flutter/services.dart';

class RandomNumberPlugin {
  static const MethodChannel _channel =
      const MethodChannel('random_number_plugin');

  static Future<int> get getRandom async {
    final int version = await _channel.invokeMethod('getRandom');
    return version;
  }
}
