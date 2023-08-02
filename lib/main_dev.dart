import 'dart:async';

import 'package:flutter/material.dart';

import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';
import 'app/my_app.dart';
import 'data/end_points.dart';

Future<void> main() async {
  EnvConfig devConfig = EnvConfig(
    appName: "GetX Template Dev",
    baseUrl: baseUrlApi,
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
    envType: Environment.DEVELOPMENT,
    envConfig: devConfig,
  );

  // Add this code below
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
