import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';

Widget introText() {
  return Column(
    children: [
      Text(
        "Hello,",
        style: appTextStyle()
            ?.copyWith(color: Colors.grey.shade200, fontSize: Get.height / 50),
      ),
      xsHeightSpan,
      Text(
        "I'm Diwash",
        style: appTextStyle()?.copyWith(
            color: Colors.white,
            fontSize: Get.height / 45,
            fontWeight: AppDimens.lfontweight),
      ),
      xsHeightSpan,
      Text(
        'Flutter Developer',
        style: appTextStyle()?.copyWith(
          color: Colors.white,
          fontSize: Get.height / 45,
        ),
      ),
      mHeightSpan,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          KButton(
              size: ButtonSize.medium,
              bordered: true,
              child: Text(
                "Know More",
                overflow: TextOverflow.ellipsis,
                style: appTextStyle()?.copyWith(
                  color: Colors.white,
                  fontSize: Get.height / 60,
                ),
              ),
              onPressed: () {}),
        ],
      )
    ],
  );
}
