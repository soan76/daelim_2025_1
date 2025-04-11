import 'package:daelim_2025_1/app/router/app_router.dart';
import 'package:daelim_2025_1/presentation/Example/example_screen.dart';
import 'package:daelim_2025_1/presentation/start/start_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
      ),
      themeMode: ThemeMode.light,
      routerConfig: router,
    );
  }
}
