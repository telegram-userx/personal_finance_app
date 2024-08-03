import 'package:flutter/material.dart';

import 'generated/strings.g.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.translations.hello,
            ),
            ElevatedButton(
              onPressed: () {
                if (TranslationProvider.of(context).locale == AppLocale.ru) {
                  LocaleSettings.setLocale(AppLocale.en);
                } else {
                  LocaleSettings.setLocale(AppLocale.ru);
                }
              },
              child: Text('change locale'),
            ),
          ],
        ),
      ),
    );
  }
}
