import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_iap_verificator_platform_interface.dart';

/// An implementation of [FlutterIapVerificatorPlatform] that uses method channels.
class MethodChannelFlutterIapVerificator extends FlutterIapVerificatorPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_iap_verificator');

  @override
  Future<bool> verify(Uint8List receipt) async {
    final version = await methodChannel.invokeMethod<bool>('verify', receipt);
    return version ?? false;
  }
}
