import 'dart:typed_data';

import 'flutter_iap_verificator_platform_interface.dart';

class FlutterIapVerificator {
  Future<bool> verify(Uint8List receipt) {
    return FlutterIapVerificatorPlatform.instance.verify(receipt);
  }
}
