import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';


import 'Todo_Hive.dart';

class Darkmode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.amber),
      ),
      dark: ThemeData(
        brightness: Brightness.dark, colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red).copyWith(secondary: Colors.amber),
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        home: Nhive(),
      ),
    );
  }
}