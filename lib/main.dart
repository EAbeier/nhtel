import 'package:flutter/material.dart';
import 'package:nhtelwebsite/helpers/themes/theme.dart';
import 'package:nhtelwebsite/pages/home/home.dart';

void main() {
  runApp(const MyApp());
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
