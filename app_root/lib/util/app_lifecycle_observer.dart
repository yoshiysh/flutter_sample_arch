import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final appLifecycleProvider = Provider<AppLifecycleState>((ref) {
  final observer = AppLifecycleObserver((value) => ref.state = value);
  final binding = WidgetsBinding.instance..addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));
  return AppLifecycleState.resumed;
});

class AppLifecycleObserver extends WidgetsBindingObserver {
  AppLifecycleObserver(this._didChangeState);

  final ValueChanged<AppLifecycleState> _didChangeState;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    _didChangeState(state);
    super.didChangeAppLifecycleState(state);
  }
}
