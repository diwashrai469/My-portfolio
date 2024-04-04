import 'dart:html' as html;

import 'package:myportfolio/core/base_model/base_model.dart';

class ProjectViewModel extends BaseModel {
  bool isHovered = false;
  int? selectedIndex;

  void hoverContainer(bool value, index) {
    isHovered = value;
    selectedIndex = index;
    update();
  }

  void redirectPage(int index) {
    if (index == 0) {
      html.window.open(
          "https://play.google.com/store/apps/details?id=com.chibihr.app&hl=en&gl=US",
          "text");
    } else if (index == 1) {
      html.window
          .open("https://apps.apple.com/np/app/dynocrm/id1637488541", "text");
    } else {
      html.window
          .open("https://apps.apple.com/be/app/dynoteams/id6448953562", "text");
    }
  }
}
