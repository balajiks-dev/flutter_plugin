import Flutter
import UIKit

public class SwiftFlutterPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {

    let currentDate = Date()
           let since1970 = currentDate.timeIntervalSince1970
           print(String(since1970 * 1000))
    result("iOS" )
  }
}
