import 'package:flutter/material.dart';

class LanguageSwitchToggle extends StatelessWidget {
  final VoidCallback banglaOnTap;
  final VoidCallback englishOnTap;
  const LanguageSwitchToggle({
    super.key,
    required this.banglaOnTap,
    required this.englishOnTap,
  });

  @override
  Widget build(BuildContext context) {
    const double containerWidth = 350.0;
    const double containerHeight = 60.0;

    return Container(
      height: containerHeight,
      width: containerWidth,

      decoration: BoxDecoration(
        color: Colors.grey.shade100,

        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.black12),
      ),

      child: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 250),
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                width: containerWidth * 0.50,

                decoration: BoxDecoration(
                  color: Colors.green.shade600,
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: banglaOnTap,
                  child: _iconTextItem(icon: "bangladesh.png", text: "বাংলা"),
                ),
              ),

              Expanded(
                child: InkWell(
                  onTap: englishOnTap,
                  child: _iconTextItem(
                    icon: "united-kingdom.png",
                    text: "English",
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _iconTextItem({
    required String icon,
    required String text,
    Color? color,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image.asset(
              "lib/features/flutter_localization/assets/icons/$icon",
              height: 30,
              width: 30,
            ),

            const SizedBox(width: 10),

            Text(
              text,
              style: TextStyle(
                color: color ?? Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
