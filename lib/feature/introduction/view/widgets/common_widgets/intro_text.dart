import 'package:flutter/material.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';

Widget introText() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "Hello,",
        textAlign: TextAlign.left,
        style: appTextStyle()?.copyWith(
            color: Colors.grey.shade200,
            fontSize: AppDimens.headlineFontSizeXSmall),
      ),
      xsHeightSpan,
      Text(
        "I'm Diwash",
        style: appTextStyle()?.copyWith(
            color: Colors.white,
            fontSize: AppDimens.headlineFontSizeSSmall,
            fontWeight: AppDimens.lfontweight),
      ),
      xsHeightSpan,
      Text(
        'Flutter Developer',
        style: appTextStyle()?.copyWith(
          color: Colors.white,
          fontSize: AppDimens.headlineFontSizeXSmall,
        ),
      ),
      mHeightSpan,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          KButton(
              bordered: true, child: const Text("Know More"), onPressed: () {}),
        ],
      )
    ],
  );
}
