import 'package:flutter/material.dart';

import '/app/my_app.dart';
import '/flavors/build_config.dart';
import '/flavors/env_config.dart';
import '/flavors/environment.dart';
import 'data/end_points.dart';

void main() {
  EnvConfig prodConfig = EnvConfig(
    appName: "GetX Template",
    baseUrl: baseUrlApi,
    shouldCollectCrashLog: true,
  );

  BuildConfig.instantiate(
      envType: Environment.PRODUCTION, envConfig: prodConfig);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
