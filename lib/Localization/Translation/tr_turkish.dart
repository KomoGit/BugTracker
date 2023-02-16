//Translations for Turkish language UI.
//tr_ siginifies translation. Not Turkiye

import 'package:bugtracker/Localization/lang_current.dart';
import 'package:bugtracker/Localization/lang_select.dart';

class Turkish extends LangSelect {
  static String lang = "Türkçe";
  static String changeLanguageText = "Dili değiştir";
  static String yesText = "Evet";
  static String noText = "Hayır";
  static String settingsText = "Ayarlar";
  static String greetUserText = "Merhaba ";
  static String testPageText = "Test Sayfası";
  static String appBarText = "Proje - İzleyici";
  static String homeButtonText = "Ev";
  static String floatingActionToolTip = "Yeni Bilet";
  static String dashboardText = "Gösterge Paneli";
  static String textPlaceHolder = "Sahte Metin, Değiştir beni!";
  //Login Page
  static String emailInputField = "E-posta adresiniz";
  static String passwordInputField = "Şifreniz";
  static String registerTextButtonFirst = "Üye değil misin? ";
  static String registerTextButtonSecond = "Kayıt olmak için buraya tıklayın";
  static String loginHeader = "Lütfen giriş yapın";
  static String loginButtonText = "Giriş yapmak";
}

void selectTurkish() {
  CurrentStrings.currentChangeLanguageText = Turkish.changeLanguageText;
  CurrentStrings.currentYesText = Turkish.yesText;
  CurrentStrings.currentNoText = Turkish.noText;
  CurrentStrings.currentSettingsText = Turkish.settingsText;
  CurrentStrings.currentUserGreetText = Turkish.greetUserText;
  CurrentStrings.currentTestPageText = Turkish.testPageText;
  CurrentStrings.currentAppBarText = Turkish.appBarText;
  CurrentStrings.currentHomeText = Turkish.homeButtonText;
  CurrentStrings.currentDummyText = Turkish.textPlaceHolder;
  CurrentStrings.currentDashboardText = Turkish.dashboardText;
  CurrentStrings.currentFloatingActionToolTipText =
      Turkish.floatingActionToolTip;
  //Login Page
  CurrentStrings.currentEmailInputField = Turkish.emailInputField;
  CurrentStrings.currentPasswordInputField = Turkish.passwordInputField;
  CurrentStrings.currentLoginButtonText = Turkish.loginButtonText;
  CurrentStrings.currentLoginHeader = Turkish.loginHeader;
  CurrentStrings.currentRegisterTextButtonFirst =
      Turkish.registerTextButtonFirst;
  CurrentStrings.currentRegisterTextButtonSecond =
      Turkish.registerTextButtonSecond;
}
