import 'package:flutter_mute/flutter_mute.dart';

Future<void> getRingerMode() async {
  RingerMode? mode;
  try {
    mode = await FlutterMute.getRingerMode();
  } catch (err) {}
}

Future<void> getAccessStatus() async {
  bool isAccessGranted = false;
  try {
    isAccessGranted = await FlutterMute.isNotificationPolicyAccessGranted;
    print(isAccessGranted);
  } catch (err) {
    print(err);
  }
}
