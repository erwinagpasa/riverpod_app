import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_app/provider.dart';

void main() {
  //For providers to work,
  //you must add ProviderScope
  //at the root of your Flutter applications:
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final textRiverpod = useProvider(textProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Demo'),
      ),
      body: Container(
        child: Center(
          child: Text('yaw!!! ' + textRiverpod),
        ),
      ),
    );
  }
}
