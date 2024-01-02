import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_chip.dart';
import 'package:myportfolio/feature/skills/widgets/skills_mobile_view.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget skillsDesktopView() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 35),
    color: lightPrimary,
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                child: Lottie.asset(AppImage.myskillLotti),
              ),
            ),
            elWidthSpan,
            Expanded(
                child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    "My skills",
                    style: appTextStyle()?.copyWith(
                      fontWeight: AppDimens.lfontweight,
                      fontSize: AppDimens.headlineFontSizeSmall1,
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
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 12),
                                child: Text(
                                  e,
                                  style: appTextStyle()?.copyWith(
                                    fontWeight: AppDimens.lfontweight,
                                    color: Colors.white,
                                    fontSize: AppDimens.headlineFontSizeXSmall,
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
            ))
          ],
        )
      ],
    ),
  );
}
