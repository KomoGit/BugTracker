//Translations for English language UI.

import 'package:bugtracker/Localization/lang_select.dart';
import 'package:bugtracker/Localization/lang_current.dart';

class English extends LangSelect {
  static String lang = "English";
  static String changeLanguageText = "Change Language";
  static String yesText = "Yes";
  static String noText = "No";
  static String settingsText = "Settings";
  static String greetUserText = "Hello ";
  static String testPageText = "Test Page";
  static String appBarText = "Project - Tracer";
  static String homeButtonText = "Home";
  static String floatingActionToolTip = "New Ticket";
  static String dashboardText = "Dashboard";
  static String textPlaceHolder = "Dummy Text, Replace me!";
}

void selectEnglish() {
  CurrentStrings.currentChangeLanguageText = English.changeLanguageText;
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
