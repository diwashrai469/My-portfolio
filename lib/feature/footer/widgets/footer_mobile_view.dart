import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'dart:html' as html;

import 'package:myportfolio/feature/footer/constant/footer_constant.dart';

Widget footerMobileView() {
  return Container(
    padding: const EdgeInsets.all(10),
    color: Colors.black,
    child: Column(
      children: [
        Text(
          followMe,
          style: appTextStyle()?.copyWith(color: Colors.white),
        ),
        sHeightSpan,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => html.window.open(AppImage.linkinUrl, "text"),
              child: const Icon(
                FontAwesomeIcons.linkedin,
                color: Colors.white,
              ),
            ),
            mWidthSpan,
            GestureDetector(
              onTap: () => html.window.open(AppImage.githubUrl, "text"),
              child: const Icon(
                FontAwesomeIcons.squareGithub,
                color: Colors.white,
              ),
            ),
          ],
        ),
        sHeightSpan,
        Text(
          madeWith,
          style: appTextStyle()?.copyWith(color: Colors.grey.shade500),
        ),
      ],
    ),
  );
}
