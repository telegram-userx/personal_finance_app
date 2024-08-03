import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'generated/strings.g.dart';
import 'home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TranslationProvider(
      child: Builder(builder: (context) {
        return MaterialApp(
          // Translations
          locale: TranslationProvider.of(context).flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],

          home: const HomeScreen(),

          // Remove debug banner
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
