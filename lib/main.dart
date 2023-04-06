import 'package:flutter/material.dart';
import 'package:widgets/config/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      title: 'Flutter Widgets',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widgets'),
        ),
        body: Center(
          child: FilledButton(onPressed: (){}, child: const Text('Hello')),
        ),
      ),
    );
  }
}