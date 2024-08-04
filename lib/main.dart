import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:turkmen_localization_support/turkmen_localization_support.dart';

import 'generated/strings.g.dart';
import 'home_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // TODO set initial locale the device's locale if available, if not use base_locale

  LocaleSettings.getLocaleStream().listen(
    (appLocale) {
      Intl.defaultLocale = appLocale.languageTag;
    },
  );

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
            ...TkDelegates.delegates,
          ],

          home: const HomeScreen(),

          // Remove debug banner
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
