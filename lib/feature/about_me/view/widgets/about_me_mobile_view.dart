import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget aboutMeMobileView() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
    width: Get.width,
    color: lightPrimary,
    child: Column(
      children: [
        Text(
          "About Me",
          style: appTextStyle()?.copyWith(
            fontWeight: AppDimens.lfontweight,
            fontSize: AppDimens.headlineFontSizeSmall1,
          ),
        ),
        mHeightSpan,
        Text(
          "I'm a Flutter developer with 1 year of experence who loves turning ideas into awesome mobile apps. I stay on top of the latest tech trends to make sure my creations not only work well but also bring joy to users. Let's team up and bring your app vision to life!",
          textAlign: TextAlign.left,
          style: appTextStyle()?.copyWith(
              fontSize: AppDimens.headlineFontSizeXSmall, color: darkGrey),
        ),
        sHeightSpan,
        Text(
          " Fluttering my way through pixels to create a touch of magic in every tap.",
          textAlign: TextAlign.center,
          style: appTextStyle()?.copyWith(
              fontSize: AppDimens.headlineFontSizeXSmall, color: darkGrey),
        ),
        lHeightSpan,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KButton(
                borderColor: primaryColor,
                size: ButtonSize.medium,
                bordered: true,
                backgroundColor: Colors.transparent,
                child: Text(
                  "Download CV",
                  style: appTextStyle()?.copyWith(
                      color: primaryColor,
                      fontSize: AppDimens.headlineFontSizeSmall1),
                ),
                onPressed: () {})
          ],
        )
      ],
    ),
  );
}
