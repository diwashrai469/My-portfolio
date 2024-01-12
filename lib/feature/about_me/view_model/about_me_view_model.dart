import 'dart:html';

import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/core/base_model/base_model.dart';

class AboutMeViewModel extends BaseModel {
  String? pdfUrl;
  bool isHovered = false;

  void onHoveredPressed(bool value) {
    isHovered = value;
    update();
  }

  downloadFile() {
    AnchorElement(href: AppImage.myResume)
      ..setAttribute("download", "Diwash_rai_CV")
      ..click();
  }
}
