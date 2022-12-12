import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

import 'app.dart';

void main()async {
  await dotenv.load(fileName: ".env");
  runApp(const App());

  String key=dotenv.get("APPID");
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  OneSignal.shared.setAppId(key);
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    print('Accepted permission: $accepted');
  } );
  
  
}

