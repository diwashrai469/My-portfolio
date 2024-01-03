import 'package:myportfolio/core/base_model/base_model.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:async';

class AboutMeViewModel extends BaseModel {
  bool isHovered = false;

  void onHoveredPressed(bool value) {
    isHovered = value;
    update();
  }

  Future<void> downloadFile(String url, String filename) async {
    var request = await http.get(Uri.parse(url));
    final bytes = request.bodyBytes;
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = File('$dir/$filename');
    await file.writeAsBytes(bytes);
  }
}
