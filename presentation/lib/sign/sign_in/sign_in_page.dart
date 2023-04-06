import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:presentation/container/user_container.dart';

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
  _SignInView({
    required this.onTapSignIn,
  });

  final VoidCallback onTapSignIn;
  final OutlineInputBorder _border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: Colors.grey),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                _MainAddressTextField(
                  border: _border,
                ),
                const Gap(32),
                _PasswordTextField(
                  border: _border,
                  onTapSignIn: onTapSignIn,
                ),
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
  const _MainAddressTextField({required this.border});
  final OutlineInputBorder border;

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
          label: const Text('メールアドレス'),
          enabledBorder: border,
          focusedBorder: border,
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
  const _PasswordTextField({
    required this.border,
    required this.onTapSignIn,
  });

  final OutlineInputBorder border;
  final VoidCallback onTapSignIn;

  @override
  Widget build(BuildContext context) => TextFormField(
        decoration: InputDecoration(
          label: const Text('パスワード'),
          enabledBorder: border,
          focusedBorder: border,
        ),
        keyboardType: TextInputType.visiblePassword,
        textInputAction: TextInputAction.send,
        onFieldSubmitted: (value) => onTapSignIn,
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
  Widget build(BuildContext context) => OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.green),
            fixedSize: const Size.fromWidth(double.maxFinite)),
        onPressed: onTapSignIn,
        child: const Text('ログイン'),
      );
}
