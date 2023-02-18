//Translations for English language UI.

import 'package:bugtracker/Interfaces/abstract_language.dart';
import 'package:bugtracker/Localization/lang_current.dart';

class English implements Language {
  static String lang = "English";
  static String changeLanguageText = "Change Language";
  static String yesText = "Yes";
  static String noText = "No";
  static String testPageText = "Test Page";
  static String appBarText = "Project - Tracer";
  static String floatingActionToolTip = "New Ticket";
  static String textPlaceHolder = "Dummy Text, Replace me!";
  //Login Page

  @override
  void setCurrentText() {
    CurrentStrings.currentChangeLanguageText = English.changeLanguageText;
    CurrentStrings.currentYesText = English.yesText;
    CurrentStrings.currentNoText = English.noText;
    CurrentStrings.currentTestPageText = English.testPageText;
    CurrentStrings.currentAppBarText = English.appBarText;
    CurrentStrings.currentDummyText = English.textPlaceHolder;
    CurrentStrings.currentFloatingActionToolTipText =
        English.floatingActionToolTip;
  }
}
