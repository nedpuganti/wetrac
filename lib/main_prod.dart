import 'dart:async';

// import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'config/env.dart';

void main() async {
  try {
    // Pass all uncaught errors from the framework to Crashlytics.
    // FlutterError.onError = Crashlytics.instance.recordFlutterError;

    WidgetsFlutterBinding.ensureInitialized();

    BuildEnvironment.init(
      flavor: BuildFlavor.production,
      baseUrl: 'https:///api',
      baseUrl2: 'https:///api',
    );

    assert(env != null);

    SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    );

    runZoned<Future<void>>(() async {
      runApp(MyApp());
    });
  } catch (error, stackTrace) {
    print(error);
  }
}
