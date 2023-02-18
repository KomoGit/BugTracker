import 'package:bugtracker/Localization/Translation/tr_english.dart';
import 'package:bugtracker/Localization/lang_current.dart';

class LoginPageEnglish extends English {
  String emailInputField = "Your email";
  String passwordInputField = "Your Password";
  String registerTextButtonFirst = "Not a member? ";
  String registerTextButtonSecond = "click here to register";
  String loginHeader = "Please Login";
  String loginButtonText = "Login";

  @override
  void setCurrentText() {
    CurrentStrings.currentEmailInputField = emailInputField;
    CurrentStrings.currentPasswordInputField = passwordInputField;
    CurrentStrings.currentLoginButtonText = loginButtonText;
    CurrentStrings.currentLoginHeader = loginHeader;
    CurrentStrings.currentRegisterTextButtonFirst = registerTextButtonFirst;
    CurrentStrings.currentRegisterTextButtonSecond = registerTextButtonSecond;
    super.setCurrentText();
  }
}
