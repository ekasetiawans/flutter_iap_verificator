#import "FlutterIapVerificatorPlugin.h"
#if __has_include(<flutter_iap_verificator/flutter_iap_verificator-Swift.h>)
#import <flutter_iap_verificator/flutter_iap_verificator-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_iap_verificator-Swift.h"
#endif

@implementation FlutterIapVerificatorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterIapVerificatorPlugin registerWithRegistrar:registrar];
}
@end
