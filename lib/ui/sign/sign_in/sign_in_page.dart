import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/ui/container/user_container.dart';
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
      child: Stack(children: [
        Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  label: const Text('メールアドレス'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.continueAction,
              autofocus: true,
              validator: (value) {
                return "";
              },
            ),
            const Gap(32),
            TextFormField(
              decoration: InputDecoration(
                  label: const Text('パスワード'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  )),
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.send,
              validator: (value) {
                return "";
              },
            ),
            const Spacer(),
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                  fixedSize: const Size.fromWidth(double.maxFinite)),
              onPressed: onTapSignIn,
              child: const Text('ログイン'),
            ),
          ],
        )
      ]),
    );
  }
}
