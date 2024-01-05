import 'dart:html';

import 'package:myportfolio/core/base_model/base_model.dart';

class AboutMeViewModel extends BaseModel {
  bool isHovered = false;

  void onHoveredPressed(bool value) {
    isHovered = value;
    update();
  }

  // Future<void> downloadFile(String url, String filename) async {
  //   var request = await http.get(Uri.parse(url));
  //   final bytes = request.bodyBytes;
  //   String dir = (await getApplicationDocumentsDirectory()).path;
  //   File file = File('$dir/$filename');
  //   await file.writeAsBytes(bytes);
  // }

  downloadFile(url) {
    AnchorElement anchorElement = AnchorElement(href: url);
    anchorElement.download = "Diwash Rai CV";
    anchorElement.click();
  }
}
