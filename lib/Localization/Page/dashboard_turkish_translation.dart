import 'package:bugtracker/Localization/Translation/tr_turkish.dart';

import '../lang_current.dart';

class DashboardTurkish extends Turkish {
  String settingsText = "Ayarlar";
  String greetUserText = "Merhaba ";
  String testPageText = "Test Sayfası";
  String homeButtonText = "Ev";

  @override
  void setCurrentText() {
    CurrentStrings.currentSettingsText = settingsText;
    CurrentStrings.currentUserGreetText = greetUserText;
    CurrentStrings.currentTestPageText = testPageText;
    CurrentStrings.currentHomeText = homeButtonText;

    super.setCurrentText();
  }
}
