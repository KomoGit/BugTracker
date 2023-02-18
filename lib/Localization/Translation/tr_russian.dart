//Translations for Russian language UI.
import 'package:bugtracker/Interfaces/abstract_language.dart';
import 'package:bugtracker/Localization/lang_current.dart';

class Russian extends Language {
  static String lang = "Русский";
  static String changeLanguageText = "Изменить язык";
  static String yesText = "Да";
  static String noText = "Нет";
  static String appBarText = "Проект - Трейсер";
  static String floatingActionToolTip = "Новый билет";
  static String textPlaceHolder = "Фиктивный текст, замени меня!";

  @override
  void setCurrentText() {
    CurrentStrings.currentChangeLanguageText = Russian.changeLanguageText;
    CurrentStrings.currentYesText = Russian.yesText;
    CurrentStrings.currentNoText = Russian.noText;
    CurrentStrings.currentAppBarText = Russian.appBarText;
    CurrentStrings.currentDummyText = Russian.textPlaceHolder;
    CurrentStrings.currentFloatingActionToolTipText =
        Russian.floatingActionToolTip;
  }
}
