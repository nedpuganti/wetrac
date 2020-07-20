import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'config/env.dart';

void main() {
  try {
    WidgetsFlutterBinding.ensureInitialized();

    BuildEnvironment.init(
      flavor: BuildFlavor.development,
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
      HttpClient.enableTimelineLogging = true;
      runApp(MyApp());
    });
  } catch (error, stackTrace) {
    print(error);
  }
}
