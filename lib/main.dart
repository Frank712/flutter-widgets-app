import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets/config/providers/theme_provider.dart';
import 'package:widgets/config/router/app_router.dart';
import 'package:widgets/config/theme/app_theme.dart';

void main() => runApp(
      const ProviderScope(
        child: MyApp(),
      ),
    );

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    //final darkMode = ref.read(isDarkModeProvider);
    //final selectedColor = ref.read(selectedIndexProvider);
    final AppTheme appTheme = ref.watch(themeNotifierProvider);
    
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: appTheme.getTheme(),
      title: 'Flutter Widgets',
    );
  }
}
