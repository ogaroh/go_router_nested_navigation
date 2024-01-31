// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:nested_navigation_gorouter_example/core/router/router.dart' show goRouter;
import 'package:nested_navigation_gorouter_example/core/theme/theme.dart' show darkTheme, theme;



void main() {
  // turn off the # in the URLs on the web
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: goRouter,
      debugShowCheckedModeBanner: false,
      theme: theme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
    );
  }
}






