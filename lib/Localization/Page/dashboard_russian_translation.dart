import 'package:bugtracker/Localization/Translation/tr_russian.dart';

import '../lang_current.dart';

class DashboardRussian extends Russian {
  String dashboardText = "Приборная панель";
  String settingsText = "Настройки";
  String homeButtonText = "Дом";
  String greetUserText = "Привет ";
  String testPageText = "Тестовая страница";

  @override
  void setCurrentText() {
    CurrentStrings.currentDashboardText = dashboardText;
    CurrentStrings.currentSettingsText = settingsText;
    CurrentStrings.currentUserGreetText = greetUserText;
    CurrentStrings.currentHomeText = homeButtonText;
    CurrentStrings.currentTestPageText = testPageText;

    super.setCurrentText();
  }
}
