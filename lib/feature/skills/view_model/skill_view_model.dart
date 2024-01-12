import 'package:myportfolio/core/base_model/base_model.dart';
import 'dart:html' as html;

class SkillViewModel extends BaseModel {
  bool isHovered = false;
  int? selectedIndex;

  void onUserHovered(bool value, int index) {
    isHovered = value;
    selectedIndex = index;
    update();
  }

  void redirectUrl(int index) {
    if (index == 0) {
      html.window.open("https://flutter.dev/", "text");
    } else if (index == 1) {
      html.window.open("https://dart.dev/", "text");
    } else if (index == 2) {
      html.window.open("https://firebase.google.com/", "text");
    } else if (index == 3) {
      html.window.open("https://github.com/", "text");
    } else if (index == 4) {
      html.window.open("https://www.postman.com/", "text");
    } else if (index == 5) {
      html.window.open("https://www.w3schools.com/html/", "text");
    } else if (index == 6) {
      html.window.open("https://www.w3schools.com/css/", "text");
    } else if (index == 7) {
      html.window.open("https://en.wikipedia.org/wiki/JavaScript", "text");
    } else if (index == 8) {
      html.window.open("https://react.dev/", "text");
    } else if (index == 9) {
      html.window.open("https://tailwindui.com/", "text");
    }
  }
}
