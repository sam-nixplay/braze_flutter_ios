import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'braze_flutter_ios_method_channel.dart';

abstract class BrazeFlutterIosPlatform extends PlatformInterface {
  BrazeFlutterIosPlatform() : super(token: _token);

  static final Object _token = Object();

  static BrazeFlutterIosPlatform _instance = MethodChannelBrazeFlutterIos();

  static BrazeFlutterIosPlatform get instance => _instance;

  static set instance(BrazeFlutterIosPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<void> configure({required String apiKey, required String endpoint}) {
    throw UnimplementedError('configure() has not been implemented.');
  }

  Future<void> logCustomEvent(
      {required String eventName, Map<String, dynamic>? properties}) {
    throw UnimplementedError('logCustomEvent() has not been implemented.');
  }

  Future<void> setUserID(String userID) {
    throw UnimplementedError('setUserID() has not been implemented.');
  }

  Future<void> registerForPushNotifications() {
    throw UnimplementedError(
        'registerForPushNotifications() has not been implemented.');
  }
}
