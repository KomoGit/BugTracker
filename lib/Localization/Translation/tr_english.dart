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
  //Login Page
  static String emailInputField = "Your email";
  static String passwordInputField = "Your Password";
  static String registerTextButtonFirst = "Not a member? ";
  static String registerTextButtonSecond = "click here to register";
  static String loginHeader = "Please Login";
  static String loginButtonText = "Login";
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
  //Login Page
  CurrentStrings.currentEmailInputField = English.emailInputField;
  CurrentStrings.currentPasswordInputField = English.passwordInputField;
  CurrentStrings.currentLoginButtonText = English.loginButtonText;
  CurrentStrings.currentLoginHeader = English.loginHeader;
  CurrentStrings.currentRegisterTextButtonFirst =
      English.registerTextButtonFirst;
  CurrentStrings.currentRegisterTextButtonSecond =
      English.registerTextButtonSecond;
}
