import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget introDesktopView() {
  return Padding(
    padding: AppDimens.mainPagePadding,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Hello,",
              textAlign: TextAlign.left,
              style: appTextStyle()?.copyWith(
                  color: disabledColor,
                  fontSize: AppDimens.headlineFontSizeOther),
            ),
            Text(
              "I'm Diwash",
              style: appTextStyle()?.copyWith(
                  fontSize: AppDimens.headlineFontSizeLarge,
                  fontWeight: AppDimens.lfontweight),
            ),
            Text(
              'Flutter Developer',
              style: appTextStyle()?.copyWith(
                fontSize: AppDimens.headlineFontSizeLarge,
              ),
            ),
            mHeightSpan,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KButton(
                    size: ButtonSize.large,
                    bordered: true,
                    child: Text(
                      "Know More",
                      style: appTextStyle()?.copyWith(
                          fontSize: AppDimens.headlineFontSizeSmall,
                          color: Colors.white),
                    ),
                    onPressed: () {}),
              ],
            )
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: Get.height / 1.8,
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.red,
                  BlendMode.modulate,
                ),
                child: Lottie.asset(
                  AppImage.lottiAnimationForImage,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Image.asset(
              AppImage.myImage,
              width: 500.0,
              height: 580,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ],
    ),
  );
}
