import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../generated/l10n.dart';
import 'app_dependencies.dart';
import 'presentation/theme/app_theme.dart';
import 'route/router.dart';
import 'utils/colored_debug_printer.dart';

class LoadingAppScreen extends ConsumerWidget {
  const LoadingAppScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AsyncValue<AppDependencies>>(
      appDependenciesProvider,
      (_, state) {
        if (state.hasValue) {
          // FlutterNativeSplash.remove();
        }
      },
    );

    final appDependencies = ref.watch(appDependenciesProvider);
    return appDependencies.when(
      data: (_) => const MyApp(),
      // loading screen is handled by the native splash screen
      loading: () => const SizedBox.shrink(),
      error: (err, st) {
        Print.red(
          '[App]',
          'could not load app dependencies; $err\n$st',
        );
        return const SizedBox.shrink();
      },
    );
  }
}

final scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouterProvider);

    return MaterialApp.router(
      scaffoldMessengerKey: scaffoldMessengerKey,
      title: 'EnvInfo.appName',
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }
}
