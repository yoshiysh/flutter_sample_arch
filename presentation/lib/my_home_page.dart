import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/container/theme_container.dart';
import 'package:presentation/container/user_container.dart';
import 'package:presentation/core/theme/app_theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      drawer: const _AppDrawer(),
    );
  }
}

class _AppDrawer extends ConsumerWidget {
  const _AppDrawer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userContainer = ref.watch(userContainerProvider);
    final appTheme = ref.watch(appThemeProvider);

    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  title: const Text('ダークモード'),
                  value: appTheme.isDarkTheme(),
                  onChanged: (value) {
                    final themeContainer = ref.read(themeContainerProvider);
                    themeContainer.setTheme(value);

                    final notifier = ref.read(appThemeModeProvider.notifier);
                    notifier.state = value ? ThemeMode.dark : ThemeMode.light;
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
            child: ElevatedButton(
              style: OutlinedButton.styleFrom(
                fixedSize: const Size.fromWidth(double.maxFinite),
              ),
              onPressed: () => {userContainer.signOut()},
              child: const Text('ログアウト'),
            ),
          ),
        ],
      ),
    );
  }
}
