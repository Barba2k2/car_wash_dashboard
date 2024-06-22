import 'package:flutter/material.dart';

import 'app/core/application_config.dart';
import 'app/core/ui/ui_config.dart';

void main() {
  ApplicationConfig().configureApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: UiConfig.title,
      theme: UiConfig.theme,
    );
  }
}
