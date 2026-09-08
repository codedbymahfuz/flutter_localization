import 'package:flutter/material.dart';

class SelectedLanguageCard extends StatelessWidget {
  final String language;
  final String currentLanguage;
  final String welcomeMessage;
  const SelectedLanguageCard({
    super.key,
    required this.language,
    required this.currentLanguage,
    required this.welcomeMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        margin: EdgeInsets.all(10),
        width: 350,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 57),
          borderRadius: BorderRadius.circular(15),
          border: BoxBorder.all(color: Colors.black12),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),

            Text(
              currentLanguage,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),

            const SizedBox(height: 7),

            Text(
              language,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),

            const SizedBox(height: 7),

            Divider(color: Colors.black12, indent: 20, endIndent: 20),

            Text(
              welcomeMessage,
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),

            const SizedBox(height: 17),
          ],
        ),
      ),
    );
  }
}
