import Flutter
import UIKit
import TPInAppReceipt

public class SwiftFlutterIapVerificatorPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_iap_verificator", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterIapVerificatorPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      if (call.method.elementsEqual("verify")){
          let arg = call.arguments as! FlutterStandardTypedData
          let data = Data(referencing: arg.data as NSData)
          
          if let receipt = try? InAppReceipt.receipt(from: data) {
              do {
                  try receipt.verify()
                  result(true)
              } catch {
                  result(false)
              }
              return
          } else {
            print("Receipt not found")
          }
      }
      
      result(false)
  }
}
