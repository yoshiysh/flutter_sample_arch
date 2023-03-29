import 'package:app/ui/container/user_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SignInRoute extends GoRouteData {
  const SignInRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) => const SignInPage();
}

class SignInPage extends ConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userContainer = ref.watch(userContainerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: _SignInView(
        onTapSignIn: () {
          userContainer.signIn();
        },
      ),
    );
  }
}

class _SignInView extends StatelessWidget {
  const _SignInView({
    required this.onTapSignIn,
  });

  final VoidCallback onTapSignIn;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: const [
                _MainAddressTextField(),
                Gap(32),
                _PasswordTextField(),
              ],
            ),
          ),
          _LoginButton(onTapSignIn),
        ],
      ),
    );
  }
}

class _MainAddressTextField extends StatelessWidget {
  const _MainAddressTextField();

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
          label: const Text('メールアドレス'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.continueAction,
        autofocus: true,
        validator: (value) {
          return "";
        },
      );
}

class _PasswordTextField extends StatelessWidget {
  const _PasswordTextField();

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
          label: const Text('パスワード'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.send,
        validator: (value) {
          return "";
        },
      );
}

class _LoginButton extends StatelessWidget {
  const _LoginButton(
    this.onTapSignIn,
  );

  final VoidCallback onTapSignIn;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: OutlinedButton.styleFrom(
          fixedSize: const Size.fromWidth(double.maxFinite),
        ),
        onPressed: onTapSignIn,
        child: const Text('ログイン'),
      );
}
