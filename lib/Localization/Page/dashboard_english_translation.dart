import 'package:bugtracker/Localization/Translation/tr_english.dart';
import 'package:bugtracker/Localization/lang_current.dart';

class DashboardEnglish extends English {
  String dashboardText = "Dashboard";
  String settingsText = "Settings";
  String homeButtonText = "Home";
  String greetUserText = "Hello ";

  @override
  void setCurrentText() {
    CurrentStrings.currentSettingsText = settingsText;
    CurrentStrings.currentUserGreetText = greetUserText;
    CurrentStrings.currentDashboardText = dashboardText;
    CurrentStrings.currentHomeText = homeButtonText;
    super.setCurrentText();
  }
}
