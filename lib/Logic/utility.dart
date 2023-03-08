import 'package:flutter/widgets.dart';

class UtilityMethods {
  bool inputIsEmpty(TextEditingController controller) {
    if (controller.text == "") {
      return true;
    }
    return false;
  }
}
