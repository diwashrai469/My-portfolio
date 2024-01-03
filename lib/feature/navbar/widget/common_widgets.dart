import 'package:flutter/material.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/navbar/view_model/navbar_view_model.dart';
import 'package:myportfolio/theme/app_theme.dart';

TextStyle? navTextStyle(
    BuildContext context, NavBarViewModel controller, int index) {
  return appTextStyle()?.copyWith(
    fontSize: AppDimens.headlineFontSizeSmall1,
    color: controller.selectedOptionIndex == index
        ? controller.textColor
        : darkGrey,
  );
}

Widget kInkwell(
    {void Function(bool)? onHover,
    required String title,
    void Function()? onTap,
    TextStyle? style}) {
  return InkWell(
    focusColor: Colors.white,
    highlightColor: Colors.white,
    hoverColor: Colors.white,
    onHover: onHover,
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1.0),
      child: Text(title, style: style),
    ),
  );
}

Widget fulllname() {
  return Text.rich(
    TextSpan(
      text: 'Diwash ',
      style: appTextStyle()?.copyWith(
        color: errorColor,
        fontWeight: FontWeight.bold,
        fontSize: AppDimens.headlineFontSizeSmall,
      ),
      children: <InlineSpan>[
        TextSpan(
          text: 'Rai',
          style: appTextStyle()?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: AppDimens.headlineFontSizeSmall,
          ),
        )
      ],
    ),
  );
}
