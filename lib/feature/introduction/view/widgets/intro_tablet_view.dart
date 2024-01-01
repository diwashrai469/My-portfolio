import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget introTabletView() {
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
                  fontSize: AppDimens.headlineFontSizeSSmall),
            ),
            xsHeightSpan,
            Text(
              "I'm Diwash",
              style: appTextStyle()?.copyWith(
                  fontSize: AppDimens.headlineFontSizeSmall1,
                  fontWeight: AppDimens.lfontweight),
            ),
            xsHeightSpan,
            Text(
              'Flutter Developer',
              style: appTextStyle()?.copyWith(
                fontSize: AppDimens.headlineFontSizeSmall1,
              ),
            ),
            mHeightSpan,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KButton(
                    size: ButtonSize.medium,
                    bordered: true,
                    child: const Text("Know More"),
                    onPressed: () {}),
              ],
            )
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: Get.height / 2.5,
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
            Positioned(
              child: Image.asset(
                AppImage.myImage,
                width: 400.0,
                height: 410.0,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
