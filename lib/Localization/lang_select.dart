//This class governs the language, String determine what language is selected.
import 'package:bugtracker/Localization/tr_english.dart';
import 'package:bugtracker/Localization/tr_russian.dart';

class LangSelect {
  static String? currentTestPageText;
  static String? currentAppBarText;
  static String? currentHomeText;
  static String? currentDummyText;
  static String? currentFloatingActionToolTipText;
  static String? currentDashboardText;
  // LangSelect(this.currentFloatingActionToolTipText, this.currentDummyText,
  //     this.currentDashboardText);

  void selectLanguage(String selectedLang) {
    switch (selectedLang) {
      case "ru":
        selectRussian();
        break;
      case "tr":
        selectTurkish();
        break;
      default:
        selectEnglish();
        break;
    }
  }

  void selectEnglish() {
    currentTestPageText = English.testPageText;
    currentAppBarText = English.appBarText;
    currentHomeText = English.homeButtonText;
    currentDummyText = English.textPlaceHolder;
    currentDashboardText = English.dashboardText;
    currentFloatingActionToolTipText = English.floatingActionToolTip;
  }

  void selectRussian() {
    currentTestPageText = Russian.testPageText;
    currentAppBarText = Russian.appBarText;
    currentHomeText = Russian.homeButtonText;
    currentDummyText = Russian.textPlaceHolder;
    currentDashboardText = Russian.dashboardText;
    currentFloatingActionToolTipText = Russian.floatingActionToolTip;
  }

  //TO BE IMPLETEMED.
  void selectTurkish() {
    throw Exception("FATAL :- TO BE IMPLEMENTED.");
    // currentTestPageText = Turkish.testPageText;
    // currentAppBarText = Turkish.appBarText;
    // currentHomeText = Turkish.homeButtonText;
    // currentDummyText = Turkish.textPlaceHolder;
    // currentDashboardText = Turkish.dashboardText;
    // currentFloatingActionToolTipText = Turkish.floatingActionToolTip;
  }

  /* 
  Return text elements from here. 
  This is access point for all texts.
   */
  String? get getFloatingActionText {
    return currentFloatingActionToolTipText!;
  }

  String? get getDashboardText {
    return currentDashboardText!;
  }

  String? get getDummyText {
    return currentDummyText!;
  }

  String? get getAppBarText {
    return currentAppBarText;
  }

  String? get getHomeText {
    return currentHomeText!;
  }

  String? get getTestPageText {
    return currentTestPageText!;
  }
}
