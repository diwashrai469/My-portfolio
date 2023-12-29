import 'package:flutter/material.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/feature/introduction/view/widgets/common_widgets/my_image.dart';

Widget introMobileView() {
  return Padding(
    padding: AppDimens.mainPagePadding,
    child: Column(
      children: [myImage()],
    ),
  );
}
