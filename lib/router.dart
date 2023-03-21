import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sample/ui/state/user_state.dart';
import 'package:flutter_sample/ui/my_home_page.dart';
import 'package:flutter_sample/ui/sign/sign_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: $appRoutes,
    redirect: (context, state) {
      final isAuthenticated = ref.read(userStateProvider).isAuthenticated;
      if (!isAuthenticated && state.subloc != '/signIn') {
        return '/signIn';
      }
      if (isAuthenticated && state.subloc == '/signIn') {
        return '/';
      }
      return state.subloc;
    },
    refreshListenable: ref.watch(userStateProvider),
    debugLogDiagnostics: kDebugMode,
  );
}

@TypedGoRoute<MyHomeRoute>(
  path: '/',
  routes: [],
)
class MyHomeRoute extends GoRouteData {
  const MyHomeRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const MyHomePage();
}

@TypedGoRoute<SignRoute>(
  path: '/signIn',
  routes: [],
)
class SignRoute extends GoRouteData {
  const SignRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const SignPage();
}