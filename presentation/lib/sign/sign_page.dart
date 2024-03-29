import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:presentation/container/user_container.dart';

class SignPage extends ConsumerWidget {
  const SignPage({
    super.key,
    required this.navigateToSignIn,
  });

  final VoidCallback navigateToSignIn;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: _SignView(
        onTapSignIn: navigateToSignIn,
        onTapSignUp: () {
          ref.read(userContainerProvider).signUp();
        },
      ),
    );
  }
}

class _SignView extends StatelessWidget {
  const _SignView({
    required this.onTapSignIn,
    required this.onTapSignUp,
  });

  final VoidCallback onTapSignIn;
  final VoidCallback onTapSignUp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _SignInButton(onTapSignIn),
            const Gap(16),
            _SignUpButton(onTapSignUp),
          ],
        )
      ]),
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton(
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

class _SignUpButton extends StatelessWidget {
  const _SignUpButton(
    this.onTapSignUp,
  );

  final VoidCallback onTapSignUp;

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: OutlinedButton.styleFrom(
            fixedSize: const Size.fromWidth(double.maxFinite)),
        onPressed: onTapSignUp,
        child: const Text('登録'),
      );
}
