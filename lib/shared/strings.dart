import 'package:bank_sha_modular/import_all.dart';

class Strings {
  static const String oneSignalAppId = "f60bfa00-4eea-40a8-acea-8c92a8a9c3ff";

  static Future<void> initPlatformState() async {
    OneSignal.shared.setAppId(oneSignalAppId);
    OneSignal.shared
        .promptUserForPushNotificationPermission()
        .then((accepted) {});
  }
}