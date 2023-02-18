//Translations for Turkish language UI.
//tr_ siginifies translation. Not Turkiye

import 'package:bugtracker/Interfaces/abstract_language.dart';
import 'package:bugtracker/Localization/lang_current.dart';

class Turkish extends Language {
  static String lang = "Türkçe";
  static String changeLanguageText = "Dili değiştir";
  static String yesText = "Evet";
  static String noText = "Hayır";
  static String appBarText = "Proje - İzleyici";
  static String floatingActionToolTip = "Yeni Bilet";
  static String dashboardText = "Gösterge Paneli";
  static String textPlaceHolder = "Sahte Metin, Değiştir beni!";

  @override
  void setCurrentText() {
    CurrentStrings.currentChangeLanguageText = Turkish.changeLanguageText;
    CurrentStrings.currentYesText = Turkish.yesText;
    CurrentStrings.currentNoText = Turkish.noText;
    CurrentStrings.currentAppBarText = Turkish.appBarText;
    CurrentStrings.currentDummyText = Turkish.textPlaceHolder;
    CurrentStrings.currentDashboardText = Turkish.dashboardText;
    CurrentStrings.currentFloatingActionToolTipText =
        Turkish.floatingActionToolTip;
  }
}
