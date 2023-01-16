import 'package:flutter/material.dart';

class PersistentAppbar extends StatelessWidget implements PreferredSizeWidget {
  const PersistentAppbar({super.key});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Project - Tracer"),
    );
  }
}
