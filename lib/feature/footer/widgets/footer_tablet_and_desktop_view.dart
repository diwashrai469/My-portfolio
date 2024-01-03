import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'dart:html' as html;

Widget footerTableAndDesktopView(bool isTabletView) {
  return Container(
    padding: const EdgeInsets.all(10),
    color: Colors.black,
    child: Column(
      children: [
        Text(
          "Follow Me",
          style: appTextStyle()?.copyWith(
              color: Colors.white,
              fontSize: isTabletView ? null : AppDimens.headlineFontSizeSSmall),
        ),
        sHeightSpan,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => html.window.open(AppImage.linkin, "text"),
              child: Icon(
                FontAwesomeIcons.linkedin,
                color: Colors.white,
                size: isTabletView ? null : 35,
              ),
            ),
            mWidthSpan,
            GestureDetector(
              onTap: () => html.window.open(AppImage.github, "text"),
              child: Icon(
                FontAwesomeIcons.squareGithub,
                color: Colors.white,
                size: isTabletView ? null : 35,
              ),
            ),
          ],
        ),
        sHeightSpan,
        Text(
          "Made with Flutter",
          style: appTextStyle()?.copyWith(color: Colors.grey.shade500),
        ),
      ],
    ),
  );
}
