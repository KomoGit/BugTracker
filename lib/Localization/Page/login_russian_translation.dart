import 'package:bugtracker/Localization/Translation/tr_russian.dart';

import '../lang_current.dart';

class LoginPageRussian extends Russian {
  String emailInputField = "Ваш электронный адрес";
  String passwordInputField = "Ваш пароль";
  String registerTextButtonFirst = "Не член? ";
  String registerTextButtonSecond = "Нажмите здесь, чтобы зарегистрироваться";
  String loginHeader = "Пожалуйста, войдите";
  String loginButtonText = "логин";

  @override
  void setCurrentText() {
    CurrentStrings.currentEmailInputField = emailInputField;
    CurrentStrings.currentPasswordInputField = passwordInputField;
    CurrentStrings.currentLoginButtonText = loginButtonText;
    CurrentStrings.currentLoginHeader = loginHeader;
    CurrentStrings.currentRegisterTextButtonFirst = registerTextButtonFirst;
    CurrentStrings.currentRegisterTextButtonSecond = registerTextButtonSecond;
  }
}
