import 'package:bugtracker/Localization/lang_select.dart';
import 'package:flutter/material.dart';

LangSelect lang = LangSelect();

class PersistentAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PersistentAppbar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(lang.getAppBarText!),
    );
  }
}
