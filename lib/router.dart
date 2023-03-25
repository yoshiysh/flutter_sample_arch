import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_sample/ui/sign/sign_in/sign_in_page.dart';
import 'package:flutter_sample/ui/container/user_container.dart';
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
      final isAuthenticated = ref.read(userContainerProvider).isAuthenticated;
      bool isSignPage = state.subloc.startsWith('/sign');
      if (!isAuthenticated && !isSignPage) {
        return '/sign';
      }
      if (isAuthenticated && isSignPage) {
        return '/';
      }
      return state.subloc;
    },
    refreshListenable: ref.watch(userContainerProvider),
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
  path: '/sign',
  routes: [TypedGoRoute<SignInRoute>(path: 'signIn')],
)
class SignRoute extends GoRouteData {
  const SignRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const SignPage();
}
