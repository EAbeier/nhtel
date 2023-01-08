import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/themes/theme.dart';
import 'package:nhtelwebsite/pages/home/home.dart';
import 'package:nhtelwebsite/helpers/url_strategy_mobile_config.dart'
    if (dart.library.html) 'package:nhtelwebsite/helpers/url_strategy_web_config.dart';

void main() {
  runApp(const MyApp());
  urlConfig();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nhtel',
      theme: theme,
      themeMode: ThemeMode.light,
      home: HomePage(),
    );
  }
}
