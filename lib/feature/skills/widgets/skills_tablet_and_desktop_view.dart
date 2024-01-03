import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_chip.dart';
import 'package:myportfolio/feature/skills/constant/skills_view_constant.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget skillsTabletAndDesktopView(bool isTabletView) {
  return Container(
    padding: isTabletView
        ? const EdgeInsets.symmetric(horizontal: 10, vertical: 30)
        : const EdgeInsets.symmetric(horizontal: 14, vertical: 35),
    color: lightPrimary,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ColorFiltered(
                colorFilter: const ColorFilter.mode(
                  Colors.red,
                  BlendMode.modulate,
                ),
                child: Lottie.asset(
                  AppImage.myskillLotti,
                ),
              ),
            ),
            sWidthSpan,
            Expanded(
              child: Container(
                padding: isTabletView ? null : const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      skillsHeadingText,
                      style: appTextStyle()?.copyWith(
                        fontWeight: AppDimens.lfontweight,
                        fontSize: AppDimens.headlineFontSizeOther,
                      ),
                    ),
                    mHeightSpan,
                    Wrap(
                      children: skillsList
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: kChip(
                                child: Padding(
                                  padding: isTabletView
                                      ? const EdgeInsets.symmetric(
                                          vertical: 4.0, horizontal: 6)
                                      : const EdgeInsets.symmetric(
                                          vertical: 8.0, horizontal: 12),
                                  child: Text(
                                    e,
                                    style: appTextStyle()?.copyWith(
                                      fontWeight: AppDimens.lfontweight,
                                      color: Colors.white,
                                      fontSize: isTabletView
                                          ? AppDimens.headlineFontSizeXXSmall
                                          : AppDimens.headlineFontSizeXSmall,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
