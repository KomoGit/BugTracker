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
}
