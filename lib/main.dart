import 'package:firstock_stock_list/router/router_pod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final approuter = ref.watch(autoRouterPod);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'First Stock List',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.95),
        useMaterial3: true,
      ),
      routerConfig: approuter.config(),
    );
  }
}
