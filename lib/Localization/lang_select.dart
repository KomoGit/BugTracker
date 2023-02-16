//This class governs the language, String determine what language is selected.
import 'package:bugtracker/Localization/Translation/tr_english.dart';
import 'package:bugtracker/Localization/Translation/tr_russian.dart';
import 'package:bugtracker/Localization/Translation/tr_turkish.dart';

class LangSelect {
  void selectLanguage(String selectedLang) {
    switch (selectedLang) {
      case "Русский":
        selectRussian();
        break;
      case "Türkçe":
        selectTurkish();
        break;
      default:
        selectEnglish();
        break;
    }
  }

  String? get getTextEnglish {
    return English.lang;
  }

  String? get getTextRussian {
    return Russian.lang;
  }

  String? get getTextTurkish {
    return Turkish.lang;
  }
}
