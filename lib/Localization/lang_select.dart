//This class governs the language, String determine what language is selected.
import 'package:bugtracker/Localization/Translation/tr_english.dart';
import 'package:bugtracker/Localization/Translation/tr_russian.dart';
import 'package:bugtracker/Localization/Translation/tr_turkish.dart';
import 'package:bugtracker/Localization/lang_current.dart';

class LangSelect {
  void selectLanguage(String selectedLang) {
    switch (selectedLang) {
      case "Russian":
        selectRussian();
        break;
      case "Turkish":
        selectTurkish();
        break;
      default:
        selectEnglish();
        break;
    }
  }

  //There should probably be a better way for this. The implementation is kinda god awful.
  void selectEnglish() {
    CurrentStrings.currentYesText = English.yesText;
    CurrentStrings.currentNoText = English.noText;
    CurrentStrings.currentSettingsText = English.settingsText;
    CurrentStrings.currentUserGreetText = English.greetUserText;
    CurrentStrings.currentTestPageText = English.testPageText;
    CurrentStrings.currentAppBarText = English.appBarText;
    CurrentStrings.currentHomeText = English.homeButtonText;
    CurrentStrings.currentDummyText = English.textPlaceHolder;
    CurrentStrings.currentDashboardText = English.dashboardText;
    CurrentStrings.currentFloatingActionToolTipText =
        English.floatingActionToolTip;
  }

  void selectRussian() {
    CurrentStrings.currentYesText = Russian.yesText;
    CurrentStrings.currentNoText = Russian.noText;
    CurrentStrings.currentSettingsText = Russian.settingsText;
    CurrentStrings.currentUserGreetText = Russian.greetUserText;
    CurrentStrings.currentTestPageText = Russian.testPageText;
    CurrentStrings.currentAppBarText = Russian.appBarText;
    CurrentStrings.currentHomeText = Russian.homeButtonText;
    CurrentStrings.currentDummyText = Russian.textPlaceHolder;
    CurrentStrings.currentDashboardText = Russian.dashboardText;
    CurrentStrings.currentFloatingActionToolTipText =
        Russian.floatingActionToolTip;
  }

  void selectTurkish() {
    CurrentStrings.currentYesText = Turkish.yesText;
    CurrentStrings.currentNoText = Turkish.noText;
    CurrentStrings.currentSettingsText = Turkish.settingsText;
    CurrentStrings.currentUserGreetText = Turkish.greetUserText;
    CurrentStrings.currentTestPageText = Turkish.testPageText;
    CurrentStrings.currentAppBarText = Turkish.appBarText;
    CurrentStrings.currentHomeText = Turkish.homeButtonText;
    CurrentStrings.currentDummyText = Turkish.textPlaceHolder;
    CurrentStrings.currentDashboardText = Turkish.dashboardText;
    CurrentStrings.currentFloatingActionToolTipText =
        Turkish.floatingActionToolTip;
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
}
