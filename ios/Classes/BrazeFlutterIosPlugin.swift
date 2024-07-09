import Flutter
import UIKit
import BrazeKit

public class BrazeFlutterIosPlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "braze_flutter_ios", binaryMessenger: registrar.messenger())
        let instance = BrazeFlutterIosPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "configure":
            if let args = call.arguments as? [String: Any],
               let apiKey = args["apiKey"] as? String,
               let endpoint = args["endpoint"] as? String {
                BrazeManager.shared.configure(apiKey: apiKey, endpoint: endpoint)
                result(nil)
            } else {
                result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid arguments for configure", details: nil))
            }
        case "logCustomEvent":
            if let args = call.arguments as? [String: Any],
               let eventName = args["eventName"] as? String {
                let properties = args["properties"] as? [String: Any]
                BrazeManager.shared.logCustomEvent(eventName: eventName, properties: properties)
                result(nil)
            } else {
                result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid arguments for logCustomEvent", details: nil))
            }
        case "setUserID":
            if let args = call.arguments as? [String: Any],
               let userID = args["userID"] as? String {
                BrazeManager.shared.setUserID(userID: userID)
                result(nil)
            } else {
                result(FlutterError(code: "INVALID_ARGUMENTS", message: "Invalid arguments for setUserID", details: nil))
            }
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}