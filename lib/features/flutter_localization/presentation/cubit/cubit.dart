import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/core/services/language_service.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('bn')) {
    loadSavedLanguage();
  }

  Future<void> changeLocale(String languageCode) async {
    await LanguageService.saveLanguage(languageCode);

    emit(Locale(languageCode));
  }

  Future<void> loadSavedLanguage() async {
    final languageCode = await LanguageService.getLanguage();

    if (languageCode != null) {
      emit(Locale(languageCode));
    }
  }
}
