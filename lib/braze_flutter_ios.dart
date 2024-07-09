import 'braze_flutter_ios_platform_interface.dart';

class BrazeFlutterIos {
  static Future<String?> getPlatformVersion() {
    return BrazeFlutterIosPlatform.instance.getPlatformVersion();
  }

  static Future<void> configure(
      {required String apiKey, required String endpoint}) {
    return BrazeFlutterIosPlatform.instance
        .configure(apiKey: apiKey, endpoint: endpoint);
  }

  static Future<void> logCustomEvent(
      {required String eventName, Map<String, dynamic>? properties}) {
    return BrazeFlutterIosPlatform.instance
        .logCustomEvent(eventName: eventName, properties: properties);
  }

  static Future<void> setUserID(String userID) {
    return BrazeFlutterIosPlatform.instance.setUserID(userID);
  }

  static Future<void> registerForPushNotifications() {
    return BrazeFlutterIosPlatform.instance.registerForPushNotifications();
  }
}
