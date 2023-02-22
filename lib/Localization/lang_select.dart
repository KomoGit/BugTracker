//This class governs the language, String determine what language is selected.
import 'package:bugtracker/Localization/Page/login_english_translation.dart';
import 'package:bugtracker/Localization/Translation/tr_english.dart';
import 'package:bugtracker/Localization/Translation/tr_russian.dart';
import 'package:bugtracker/Localization/Translation/tr_turkish.dart';

import 'Page/dashboard_english_translation.dart';

//Worse possible way to do this. Ensure you only have to call 1 single method.
DashboardEnglish dashboardEnglish = DashboardEnglish();
LoginPageEnglish loginPageEnglish = LoginPageEnglish();

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

  //Ensure open closed is applied here. We can't go back here adding other pages as they come up.
  void selectEnglish() {
    dashboardEnglish.setCurrentText();
    loginPageEnglish.setCurrentText();
  }

  void selectTurkish() {}

  void selectRussian() {}

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
