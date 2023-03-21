import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/ui/state/user_state.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SignPage extends ConsumerWidget {
  const SignPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userContainer = ref.watch(userStateProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ログイン'),
      ),
      body: _SignView(
        onTapSignIn: () {
          context.go('/sign/signIn');
        },
        onTapSignUp: () {
          userContainer.signUp();
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
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite)),
              onPressed: onTapSignIn,
              child: const Text('ログイン'),
            ),
            const Gap(16),
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite)),
              onPressed: onTapSignUp,
              child: const Text('登録'),
            ),
          ],
        )
      ]),
    );
  }
}
