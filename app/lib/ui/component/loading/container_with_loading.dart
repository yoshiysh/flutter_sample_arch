import 'package:app/ui/component/loading/loading.dart';
import 'package:app/ui/component/loading/loading_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainerWithLoading extends ConsumerWidget {
  const ContainerWithLoading({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loadingStateProvider);
    return Stack(children: [
      child,
      state.isLoading ? const Loading() : const SizedBox(),
    ]);
  }
}
