import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:personal_finance_app/generated/strings.g.dart';

void main() {
  group('i18n', () {
    test('Should compile (en)', () {
      // The following test will fail if the i18n file is either not compiled
      // or there are compile-time errors.
      expect(AppLocale.en.build().hello, 'Hello!');
    });

    test('Should compile (ru)', () {
      // The following test will fail if the i18n file is either not compiled
      // or there are compile-time errors.
      expect(AppLocale.ru.build().hello, 'Привет!');
    });

    test('Should compile (tk)', () {
      // The following test will fail if the i18n file is either not compiled
      // or there are compile-time errors.
      expect(AppLocale.tk.build().hello, 'Salam!');
    });

    test('All locales should be supported by Flutter', () {
      for (final locale in AppLocale.values) {
        // This will fail if the locale is not supported by Flutter
        expect([...kMaterialSupportedLanguages, 'tk'], contains(locale.languageCode));
      }
    });
  });
}
