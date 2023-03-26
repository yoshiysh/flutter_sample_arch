import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/router.dart';
import 'package:flutter_sample/ui/theme/app_theme.dart';
import 'package:flutter_sample/util/app_lifecycle_observer.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      darkTheme: AppTheme.dark().data,
      themeMode: themeMode,
      debugShowCheckedModeBanner: kDebugMode,
    );
  }
}
