//This class governs the language, String determine what language is selected.
import 'package:bugtracker/Localization/Translation/tr_english.dart';
import 'package:bugtracker/Localization/Translation/tr_russian.dart';
import 'package:bugtracker/Localization/Translation/tr_turkish.dart';
import 'package:bugtracker/Localization/lang_current.dart';

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

  /* 
  Return text elements from here. 
  This is access point for all texts.
   */

  String? get getYesText {
    return CurrentStrings.currentYesText!;
  }

  String? get getNoText {
    return CurrentStrings.currentNoText!;
  }

  String? get getSettingsText {
    return CurrentStrings.currentSettingsText!;
  }

  String? get getFloatingActionText {
    return CurrentStrings.currentFloatingActionToolTipText!;
  }

  String? get getDashboardText {
    return CurrentStrings.currentDashboardText!;
  }

  String? get getDummyText {
    return CurrentStrings.currentDummyText!;
  }

  String? get getAppBarText {
    return CurrentStrings.currentAppBarText!;
  }

  String? get getHomeText {
    return CurrentStrings.currentHomeText!;
  }

  String? get getTestPageText {
    return CurrentStrings.currentTestPageText!;
  }

  String? get getUserGreetText {
    return CurrentStrings.currentUserGreetText!;
  }

  String? get getChangeLanguageText {
    return CurrentStrings.currentChangeLanguageText!;
  }
}
