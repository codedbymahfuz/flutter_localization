import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/features/flutter_localization/presentation/cubit/cubit.dart';

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
   
    final currentLocale = context.watch<LocaleCubit>().state;

    final int indexCount = currentLocale.languageCode == "bn" ? 0 : 1;

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final itemWidth = width / 2;

        return Container(
          height: 60,
          width: double.infinity,

          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(color: Colors.black12),
          ),

          child: Stack(
            children: [
              AnimatedPositioned(
                duration: const Duration(milliseconds: 250),
                left: indexCount * itemWidth + 4,
                top: 4,
                bottom: 4,
                child: Container(
                  width: itemWidth - 8,
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(9),
                  ),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: banglaOnTap,
                      child: _iconTextItem(
                        icon: "bangladesh.png",
                        text: "বাংলা",
                        color: indexCount == 0 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),

                  Expanded(
                    child: InkWell(
                      onTap: englishOnTap,
                      child: _iconTextItem(
                        icon: "united-kingdom.png",
                        text: "English",
                        color: indexCount == 1 ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
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
                color: color,
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
