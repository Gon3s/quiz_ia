import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  _setupSystemUIOverlayStyle();
  _setupPreferredOrientations();

  runApp(
    const ProviderScope(
      // observers: [
      //   ProviderLogger(),
      // ],
      child: const LoadingAppScreen(),
    ),
  );
}

void _setupPreferredOrientations() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

void _setupSystemUIOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.black,
    ),
  );
}
