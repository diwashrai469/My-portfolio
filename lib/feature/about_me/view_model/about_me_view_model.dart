import 'dart:html' as html;
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:myportfolio/core/base_model/base_model.dart';

class AboutMeViewModel extends BaseModel {
  String? pdfUrl;
  bool isHovered = false;

  void onHoveredPressed(bool value) {
    isHovered = value;
    update();
  }

  downloadFile() async {
    const String pdfFileName = 'diwashrai.pdf';
    final firebase_storage.Reference pdfRef =
        firebase_storage.FirebaseStorage.instance.ref().child(pdfFileName);
    final String downloadURL = await pdfRef.getDownloadURL();
    html.AnchorElement anchorElement = html.AnchorElement(href: downloadURL);
    anchorElement.download = downloadURL;
    anchorElement.click();
  }
}
