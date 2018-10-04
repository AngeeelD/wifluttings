import 'dart:async';

import 'package:flutter/services.dart';

class Wifluttings {
  static const MethodChannel _channel = const MethodChannel('wifluttings');

  static Future<bool> get openNativeWifiSettings async {
    final bool wasOpened = await _channel.invokeMethod('openWifiSettings');
    return wasOpened;
  }
}
