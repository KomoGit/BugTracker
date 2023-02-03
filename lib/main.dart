import 'package:bugtracker/Localization/lang_select.dart';
import 'package:bugtracker/Views/Screens/ui_app.dart';
import 'package:flutter/material.dart';

//Ensure no code is added here.
LangSelect lang = LangSelect();
void main() {
  lang.selectLanguage("");
  runApp(const MyApp());
}
