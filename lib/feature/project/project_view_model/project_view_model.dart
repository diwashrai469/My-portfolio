import 'package:myportfolio/core/base_model/base_model.dart';

class ProjectViewModel extends BaseModel {
  bool isFlipped = false;

  void switchCard() {
    isFlipped = !isFlipped;
    update();
  }
}
