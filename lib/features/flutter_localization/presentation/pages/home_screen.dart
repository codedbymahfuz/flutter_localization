import 'package:flutter/material.dart';
import 'package:flutter_localization/features/flutter_localization/presentation/pages/language_switch_toggle.dart';
import 'package:flutter_localization/features/flutter_localization/presentation/pages/selected_language_card.dart';
import 'package:flutter_localization/l10n/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: Text(
          l10n.appSubtitle,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: height * 0.1),

            CircleAvatar(
              radius: 35,
              backgroundColor: Color(0xFFB5D4F4),
              child: Center(
                child: Text(
                  l10n.alphabet,
                  style: TextStyle(
                    color: Color(0xFF185FA5),
                    fontSize: 27,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            SizedBox(height: height * 0.1),

            LanguageSwitchToggle(
              banglaOnTap: () {
                debugPrint("Bangla button Click");
              },

              englishOnTap: () {
                debugPrint("English button Click");
              },
            ),

            SizedBox(height: height * 0.1),

            SelectedLanguageCard(
              language: l10n.language,
              currentLanguage: l10n.currentLanguage,
              welcomeMessage: l10n.welcomeMessage,
            ),
          ],
        ),
      ),
    );
  }
}
