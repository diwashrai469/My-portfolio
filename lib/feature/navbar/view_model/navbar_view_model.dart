import 'package:flutter/material.dart';
import 'package:myportfolio/core/base_model/base_model.dart';
import 'package:myportfolio/theme/app_theme.dart';

class NavBarViewModel extends BaseModel {
  bool ishoverd = false;
  int? selectedOptionIndex;
  Color textColor = Colors.blue;

  void changeButtonTextColor(bool isHover, int index) {
    if (isHover) {
      selectedOptionIndex = index;
      textColor = Colors.red;
      ishoverd = true;
    } else {
      textColor = darkGrey;
      ishoverd = false;
    }

    update();
  }
}
