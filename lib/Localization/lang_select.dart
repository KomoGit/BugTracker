//This class governs the language, String determine what language is selected.
import 'package:bugtracker/Localization/tr_english.dart';
import 'package:bugtracker/Localization/tr_russian.dart';
import 'package:bugtracker/Localization/tr_turkish.dart';

class LangSelect {
  static String? currentYesText;
  static String? currentNoText;
  static String? currentSettingsText;
  static String? currentUserGreetText;
  static String? currentTestPageText;
  static String? currentAppBarText;
  static String? currentHomeText;
  static String? currentDummyText;
  static String? currentFloatingActionToolTipText;
  static String? currentDashboardText;

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

  //There should probably be a better way for this. The implementation is kinda god awful.
  void selectEnglish() {
    currentYesText = English.yesText;
    currentNoText = English.noText;
    currentSettingsText = English.settingsText;
    currentUserGreetText = English.greetUserText;
    currentTestPageText = English.testPageText;
    currentAppBarText = English.appBarText;
    currentHomeText = English.homeButtonText;
    currentDummyText = English.textPlaceHolder;
    currentDashboardText = English.dashboardText;
    currentFloatingActionToolTipText = English.floatingActionToolTip;
  }

  void selectRussian() {
    currentYesText = Russian.yesText;
    currentNoText = Russian.noText;
    currentSettingsText = Russian.settingsText;
    currentUserGreetText = Russian.greetUserText;
    currentTestPageText = Russian.testPageText;
    currentAppBarText = Russian.appBarText;
    currentHomeText = Russian.homeButtonText;
    currentDummyText = Russian.textPlaceHolder;
    currentDashboardText = Russian.dashboardText;
    currentFloatingActionToolTipText = Russian.floatingActionToolTip;
  }

  void selectTurkish() {
    currentYesText = Turkish.yesText;
    currentNoText = Turkish.noText;
    currentSettingsText = Turkish.settingsText;
    currentUserGreetText = Turkish.greetUserText;
    currentTestPageText = Turkish.testPageText;
    currentAppBarText = Turkish.appBarText;
    currentHomeText = Turkish.homeButtonText;
    currentDummyText = Turkish.textPlaceHolder;
    currentDashboardText = Turkish.dashboardText;
    currentFloatingActionToolTipText = Turkish.floatingActionToolTip;
  }

  /* 
  Return text elements from here. 
  This is access point for all texts.
   */
  String? get getYesText {
    return currentYesText!;
  }

  String? get getNoText {
    return currentNoText!;
  }

  String? get getSettingsText {
    return currentSettingsText!;
  }

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
    return currentAppBarText!;
  }

  String? get getHomeText {
    return currentHomeText!;
  }

  String? get getTestPageText {
    return currentTestPageText!;
  }

  String? get getUserGreetText {
    return currentUserGreetText!;
  }
}
