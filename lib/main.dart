import 'package:bugtracker/Localization/lang_select.dart';
import 'package:bugtracker/UI/Screens/ui_app.dart';
import 'package:flutter/material.dart';

//Ensure no code is added here.
void main() {
  LangSelect lang = LangSelect();
  lang.selectLanguage("ru");
  runApp(const MyApp());
}
