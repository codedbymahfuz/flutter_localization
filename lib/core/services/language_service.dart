import 'package:shared_preferences/shared_preferences.dart';

class LanguageService {
  static String locale = "language-code";

  static Future<void> saveLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();

    prefs.setString(locale, languageCode);
  }

  static Future<String?> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();

    return prefs.getString(locale);
  }
}
