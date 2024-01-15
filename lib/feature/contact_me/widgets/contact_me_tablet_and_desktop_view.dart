import 'package:flutter/material.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/contact_me/widgets/contact_me_form_field.dart';
import 'package:myportfolio/feature/contact_me/constant/contact_me_constant.dart';
import 'package:myportfolio/feature/contact_me/view_model/contact_view_model.dart';

Widget contactMeTabletAndDesktopView(
    bool isTabletView, ContactViewModel controller) {
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
            if (isTabletView)
              Expanded(
                child: contactMeFormField(true, controller),
              ),
            if (!isTabletView) contactMeFormField(false, controller),
            elWidthSpan,
            if (isTabletView) Expanded(child: getInTouch(true)),
            if (!isTabletView) getInTouch(false),
          ],
        ),
      ],
    ),
  );
}
