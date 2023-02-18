import 'package:bugtracker/Localization/Translation/tr_turkish.dart';

import '../lang_current.dart';

class LoginPageTurkish extends Turkish {
  String emailInputField = "E-posta adresiniz";
  String passwordInputField = "Şifreniz";
  String registerTextButtonFirst = "Üye değil misin? ";
  String registerTextButtonSecond = "Kayıt olmak için buraya tıklayın";
  String loginHeader = "Lütfen giriş yapın";
  String loginButtonText = "Giriş yapmak";

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
