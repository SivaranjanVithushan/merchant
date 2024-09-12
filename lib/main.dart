import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:merchant/core/constants/routes.dart';
import 'package:merchant/core/theme_data/colour_scheme.dart';
import 'package:merchant/core/theme_data/text_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shipping Progress',
      themeMode: ThemeMode.light,
      theme: ThemeData(
        colorScheme: lightColorScheme,
        textTheme: textTheme,
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      darkTheme: ThemeData(colorScheme: darkColorScheme),
      initialRoute: '/',
      routes: routes,
    );
  }
}
