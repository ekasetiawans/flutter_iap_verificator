# flutter_iap_verificator

A Flutter plugin to verify In App Purchase Receipt on device.
Currently, it's only works on iOS.

This plugin is using [TPInAppReceipt](https://github.com/tikhop/TPInAppReceipt) as a backend.
## Usage

Use [In App Purchase](https://pub.dev/packages/in_app_purchase) plugin.
Then use the `localVerificationData` as receipt value.

Example:
```dart
    final receipt = purchaseDetails.verificationData.localVerificationData;

    final isValid = await FlutterIapVerificator(),.verify(receipt);
    if (isValid){
        // process valid receipt.
    }
```


## Warning!!!
We highly recommends to verify your receipt on server side. This plugins can be used as additional security for verifying the receipt before you send to your server.