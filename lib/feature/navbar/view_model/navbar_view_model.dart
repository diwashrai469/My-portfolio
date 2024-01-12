import 'package:flutter/material.dart';
import 'package:myportfolio/core/base_model/base_model.dart';
import 'package:myportfolio/feature/navbar/constants/navbar_constants.dart';
import 'package:myportfolio/theme/app_theme.dart';

class NavBarViewModel extends BaseModel {
  final ScrollController scrollController = ScrollController();

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

  void onPressNavbarOption(int index) {
    if (navOptionTitle[index] == "Home") {
      scrollToSection(0);
    }
    if (navOptionTitle[index] == "About Me") {
      scrollToSection(1);
    }
    if (navOptionTitle[index] == "Project") {
      scrollToSection(2);
    }
    if (navOptionTitle[index] == "Skills") {
      scrollToSection(3);
    }
  }

  void scrollToSection(int index) {
    double scrollPosition = 0.0;

    if (index == 0) {
      scrollPosition = 0.0;
    } else if (index == 1) {
      scrollPosition = 290.0 * index;
    } else if (index == 2) {
      scrollPosition = 400.0 * index;
    } else if (index == 3) {
      scrollPosition = 600.0 * index;
    } else if (index == 4) {
      scrollPosition = 580.0 * index;
    }

    scrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
