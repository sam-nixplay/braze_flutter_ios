import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'braze_flutter_ios_platform_interface.dart';

class MethodChannelBrazeFlutterIos extends BrazeFlutterIosPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('braze_flutter_ios');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> configure(
      {required String apiKey, required String endpoint}) async {
    await methodChannel.invokeMethod('configure', {
      'apiKey': apiKey,
      'endpoint': endpoint,
    });
  }

  @override
  Future<void> logCustomEvent(
      {required String eventName, Map<String, dynamic>? properties}) async {
    await methodChannel.invokeMethod('logCustomEvent', {
      'eventName': eventName,
      'properties': properties,
    });
  }

  @override
  Future<void> setUserID(String userID) async {
    await methodChannel.invokeMethod('setUserID', {
      'userID': userID,
    });
  }

  @override
  Future<void> registerForPushNotifications() async {
    await methodChannel.invokeMethod('registerForPushNotifications');
  }
}
