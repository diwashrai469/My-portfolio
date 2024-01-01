import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget aboutMeDesktopView() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 80),
    width: Get.width,
    color: lightPrimary,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Image.asset(height: Get.height / 6, AppImage.aboutMe)),
        Expanded(
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
                    fontSize: AppDimens.headlineFontSizeSSmall,
                    color: darkGrey),
              ),
              sHeightSpan,
              Text(
                " Fluttering my way through pixels to create a touch of magic in every tap.",
                textAlign: TextAlign.center,
                style: appTextStyle()?.copyWith(
                    fontSize: AppDimens.headlineFontSizeSSmall,
                    color: darkGrey),
              ),
              lHeightSpan,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KButton(
                      borderColor: primaryColor,
                      size: ButtonSize.large,
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
        ),
      ],
    ),
  );
}
