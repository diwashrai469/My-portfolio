import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/feature/about_me/about_me_view_model/about_me_view_model.dart';
import 'package:myportfolio/feature/about_me/constant/about_me_constant.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget aboutMeMobileView(AboutMeViewModel controller) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
    width: Get.width,
    color: lightPrimary,
    child: Column(
      children: [
        Text(
          aboutMeTitleText,
          style: appTextStyle()?.copyWith(
            fontWeight: AppDimens.lfontweight,
            fontSize: AppDimens.headlineFontSizeSmall1,
          ),
        ),
        mHeightSpan,
        Text(
          aboutMeDescriptionText,
          textAlign: TextAlign.left,
          style: appTextStyle()?.copyWith(
              fontSize: AppDimens.headlineFontSizeXSmall, color: darkGrey),
        ),
        sHeightSpan,
        Text(
          quoteText,
          textAlign: TextAlign.center,
          style: appTextStyle()?.copyWith(
              fontSize: AppDimens.headlineFontSizeXSmall, color: darkGrey),
        ),
        lHeightSpan,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: KButton(
                borderColor: primaryColor,
                size: ButtonSize.medium,
                bordered: true,
                backgroundColor: Colors.transparent,
                child: Text(
                  downloadResumeText,
                  style: appTextStyle()?.copyWith(
                    color: controller.isHovered ? Colors.white : primaryColor,
                    fontSize: AppDimens.headlineFontSizeSmall1,
                  ),
                ),
                onPressed: () => controller.downloadFile(
                  AppImage.myResume,
                ),
                onHover: (isHovered) => controller.onHoveredPressed(isHovered),
              ),
            ),
          ],
        )
      ],
    ),
  );
}
