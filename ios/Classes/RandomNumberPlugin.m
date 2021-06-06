#import "RandomNumberPlugin.h"

@implementation RandomNumberPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"random_number_plugin"
            binaryMessenger:[registrar messenger]];
  RandomNumberPlugin* instance = [[RandomNumberPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getRandom" isEqualToString:call.method]) {
    let currentDate = Date()
            let since1970 = currentDate.timeIntervalSince1970
    result([@Int(since1970 * 1000)]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end
