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

Widget aboutMeTabletAndDesktopView(
    AboutMeViewModel controller, bool isTabletView) {
  return Container(
    padding:
        EdgeInsets.symmetric(horizontal: 15, vertical: isTabletView ? 40 : 80),
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
                aboutMeTitleText,
                style: appTextStyle()?.copyWith(
                  fontWeight: AppDimens.lfontweight,
                  fontSize: AppDimens.headlineFontSizeOther,
                ),
              ),
              mHeightSpan,
              Text(
                aboutMeDescriptionText,
                textAlign: TextAlign.left,
                style: appTextStyle()?.copyWith(
                    fontSize: AppDimens.headlineFontSizeSmall1,
                    color: darkGrey),
              ),
              sHeightSpan,
              Text(
                quoteText,
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
                    onHover: (value) => controller.onHoveredPressed(value),
                    borderColor: primaryColor,
                    size: isTabletView ? ButtonSize.medium : ButtonSize.large,
                    bordered: true,
                    backgroundColor: Colors.transparent,
                    child: Text(
                      downloadResumeText,
                      style: appTextStyle()?.copyWith(
                          color: controller.isHovered
                              ? Colors.white
                              : primaryColor,
                          fontSize: AppDimens.headlineFontSizeSmall1),
                    ),
                    onPressed: () => controller.downloadFile(
                      AppImage.myResume,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
