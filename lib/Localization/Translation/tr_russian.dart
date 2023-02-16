//Translations for Russian language UI.

import 'package:bugtracker/Localization/lang_select.dart';
import 'package:bugtracker/Localization/lang_current.dart';

class Russian extends LangSelect {
  static String lang = "Русский";
  static String changeLanguageText = "Изменить язык";
  static String yesText = "Да";
  static String noText = "Нет";
  static String settingsText = "Настройки";
  static String greetUserText = "Привет ";
  static String testPageText = "Тестовая страница";
  static String appBarText = "Проект - Трейсер";
  static String homeButtonText = "Дом";
  static String floatingActionToolTip = "Новый билет";
  static String dashboardText = "Приборная панель";
  static String textPlaceHolder = "Фиктивный текст, замени меня!";
  //Login page
  static String emailInputField = "Ваш электронный адрес";
  static String passwordInputField = "Ваш пароль";
  static String registerTextButtonFirst = "Не член? ";
  static String registerTextButtonSecond =
      "Нажмите здесь, чтобы зарегистрироваться";
  static String loginHeader = "Пожалуйста, войдите";
  static String loginButtonText = "логин";
}

void selectRussian() {
  CurrentStrings.currentChangeLanguageText = Russian.changeLanguageText;
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
  //Login Page
  CurrentStrings.currentEmailInputField = Russian.emailInputField;
  CurrentStrings.currentPasswordInputField = Russian.passwordInputField;
  CurrentStrings.currentLoginButtonText = Russian.loginButtonText;
  CurrentStrings.currentLoginHeader = Russian.loginHeader;
  CurrentStrings.currentRegisterTextButtonFirst =
      Russian.registerTextButtonFirst;
  CurrentStrings.currentRegisterTextButtonSecond =
      Russian.registerTextButtonSecond;
}
