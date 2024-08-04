import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            Text(DateFormat('dd LLLL, yyyy').format(DateTime.now())),
            ElevatedButton(
              onPressed: () {
                if (TranslationProvider.of(context).locale == AppLocale.ru) {
                  LocaleSettings.setLocale(AppLocale.en);
                } else if (TranslationProvider.of(context).locale == AppLocale.en) {
                  LocaleSettings.setLocale(AppLocale.tk);
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
