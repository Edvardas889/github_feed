import 'dart:async';

import 'package:flutter/material.dart';
import 'package:github_feed/app.dart';
import 'package:github_feed/dependencies.dart';

void main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await Dependencies.initializeServices();
      runApp(const App());
    },
    (error, StackTrace stackTrace) {
      //LOG ERROR
    },
  );
}
