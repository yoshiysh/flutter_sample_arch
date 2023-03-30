import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:root/router.dart';
import 'package:ui/ui/theme/app_theme.dart';
import 'package:ui/util/app_lifecycle_observer.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(appThemeProvider);
    final themeMode = ref.watch(appThemeModeProvider);
    final router = ref.watch(routerProvider);

    ref.listen<AppLifecycleState>(
      appLifecycleProvider,
      (previous, next) => debugPrint('Previous: $previous, Next: $next'),
    );

    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      theme: theme.data,
      darkTheme: AppTheme.dark().data,
      themeMode: themeMode,
      debugShowCheckedModeBanner: kDebugMode,
    );
  }
}
