// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $myHomeRoute,
      $signRoute,
    ];

RouteBase get $myHomeRoute => GoRouteData.$route(
      path: '/',
      factory: $MyHomeRouteExtension._fromState,
    );

extension $MyHomeRouteExtension on MyHomeRoute {
  static MyHomeRoute _fromState(GoRouterState state) => const MyHomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

RouteBase get $signRoute => GoRouteData.$route(
      path: '/sign',
      factory: $SignRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'signIn',
          factory: $SignInRouteExtension._fromState,
        ),
      ],
    );

extension $SignRouteExtension on SignRoute {
  static SignRoute _fromState(GoRouterState state) => const SignRoute();

  String get location => GoRouteData.$location(
        '/sign',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

extension $SignInRouteExtension on SignInRoute {
  static SignInRoute _fromState(GoRouterState state) => const SignInRoute();

  String get location => GoRouteData.$location(
        '/sign/signIn',
      );

  void go(BuildContext context) => context.go(location);

  void push(BuildContext context) => context.push(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'eeaed54d57cca19e2e68fecd937d4b6e07f05454';

/// See also [router].
@ProviderFor(router)
final routerProvider = AutoDisposeProvider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterRef = AutoDisposeProviderRef<GoRouter>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
