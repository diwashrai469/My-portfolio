import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_chip.dart';
import 'package:myportfolio/feature/skills/constant/skills_view_constant.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget skillsMobileView() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
    color: lightPrimary,
    child: Column(
      children: [
        Text(
          skillsHeadingText,
          style: appTextStyle()?.copyWith(
            fontWeight: AppDimens.lfontweight,
            fontSize: AppDimens.headlineFontSizeSmall1,
          ),
        ),
        mHeightSpan,
        ColorFiltered(
          colorFilter: const ColorFilter.mode(
            Colors.red,
            BlendMode.modulate,
          ),
          child: Lottie.asset(
            AppImage.myskillLotti,
            fit: BoxFit.fitHeight,
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
                          vertical: 4.0, horizontal: 6),
                      child: Text(
                        e,
                        style: appTextStyle()?.copyWith(
                          fontWeight: AppDimens.lfontweight,
                          color: Colors.white,
                          fontSize: AppDimens.headlineFontSizeXXSmall,
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
  );
}
