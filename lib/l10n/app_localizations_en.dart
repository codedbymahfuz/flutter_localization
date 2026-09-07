// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get alphabet => 'A';

  @override
  String get appSubtitle => 'Flutter Localization Demo';

  @override
  String get currentLanguage => 'Current language';

  @override
  String get language => 'English';

  @override
  String get welcomeMessage => 'Congratulations! You have selected\nEnglish';
}
