import 'package:bugtracker/Localization/lang_select.dart';
import 'package:flutter/material.dart';
import 'UI/ui_app.dart';

//Ensure no code is added here.
void main() {
  LangSelect lang = LangSelect();
  lang.selectLanguage("jp");
  runApp(const MyApp());
}
