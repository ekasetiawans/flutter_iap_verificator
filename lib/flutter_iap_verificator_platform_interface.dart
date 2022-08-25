import 'dart:typed_data';

import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_iap_verificator_method_channel.dart';

abstract class FlutterIapVerificatorPlatform extends PlatformInterface {
  /// Constructs a FlutterIapVerificatorPlatform.
  FlutterIapVerificatorPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIapVerificatorPlatform _instance =
      MethodChannelFlutterIapVerificator();

  /// The default instance of [FlutterIapVerificatorPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIapVerificator].
  static FlutterIapVerificatorPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIapVerificatorPlatform] when
  /// they register themselves.
  static set instance(FlutterIapVerificatorPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> verify(Uint8List receipt);
}
