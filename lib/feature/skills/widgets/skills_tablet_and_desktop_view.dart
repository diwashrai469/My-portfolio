import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/skills/constant/skills_view_constant.dart';
import 'package:myportfolio/feature/skills/model/skills_model.dart';
import 'package:myportfolio/feature/skills/view_model/skill_view_model.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget skillsTabletAndDesktopView(
    {required bool isTabletView,
    required bool isMoblieView,
    required SkillViewModel controller}) {
  return Container(
    padding: isTabletView
        ? const EdgeInsets.symmetric(horizontal: 10, vertical: 50)
        : const EdgeInsets.symmetric(horizontal: 14, vertical: 50),
    color: lightPrimary,
    child: Column(
      children: [
        Text(
          skillsHeadingText,
          style: appTextStyle()?.copyWith(
            fontWeight: AppDimens.lfontweight,
            fontSize: isMoblieView
                ? AppDimens.headlineFontSizeSmall1
                : AppDimens.headlineFontSizeOther,
          ),
        ),
        mHeightSpan,
        Text(
          skillsIntro,
          textAlign: TextAlign.center,
          style: appTextStyle()?.copyWith(
              fontSize: isMoblieView
                  ? AppDimens.headlineFontSizeXSmall
                  : AppDimens.headlineFontSizeSmall1,
              color: darkGrey),
        ),
        lHeightSpan,
        Wrap(
          alignment: WrapAlignment.center,
          children: skillsList.map((data) {
            final index = skillsList.indexOf(data);
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: InkWell(
                onHover: (value) => controller.onUserHovered(value, index),
                onTap: () => controller.redirectUrl(index),
                child: Container(
                  padding: isTabletView
                      ? const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 10)
                      : const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 20),
                  decoration: BoxDecoration(
                      border: Border.all(color: disabledColor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Image.asset(
                        data.image,
                        height: Get.height / 24,
                      ),
                      sWidthSpan,
                      Text(
                        data.title,
                        style: appTextStyle()?.copyWith(
                          fontWeight: AppDimens.lfontweight,
                          color: (controller.isHovered &&
                                  controller.selectedIndex == index)
                              ? primaryColor
                              : darkGrey,
                          fontSize: isMoblieView
                              ? AppDimens.headlineFontSizeXXXSmall
                              : isTabletView
                                  ? AppDimens.headlineFontSizeXXSmall
                                  : AppDimens.headlineFontSizeXSmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        )
      ],
    ),
  );
}
