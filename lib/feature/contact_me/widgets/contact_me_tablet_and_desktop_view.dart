import 'package:flutter/material.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/contact_me/common_widget/common_widget.dart';
import 'package:myportfolio/feature/contact_me/constant/contact_me_constant.dart';

Widget contactMeTabletAndDesktopView(bool isTabletView) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 18),
    child: Column(
      children: [
        Text(
          contactMeTitle,
          style: appTextStyle()?.copyWith(
            fontWeight: AppDimens.lfontweight,
            fontSize: AppDimens.headlineFontSizeOther,
          ),
        ),
        lHeightSpan,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isTabletView) Expanded(child: contactMeFormField(true)),
            if (!isTabletView) contactMeFormField(false),
            elWidthSpan,
            if (isTabletView) Expanded(child: getInTouch(true)),
            if (!isTabletView) getInTouch(false),
          ],
        ),
      ],
    ),
  );
}
