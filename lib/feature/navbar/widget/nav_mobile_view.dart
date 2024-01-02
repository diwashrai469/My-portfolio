import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_listile.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget navMobileView(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: InkWell(
      onTap: () => Scaffold.of(context).openDrawer(),
      child: const Icon(
        Icons.menu,
        color: secondaryColor,
      ),
    ),
    title: Text.rich(
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
    ),
    centerTitle: true,
  );
}

Widget navDrawer() {
  const iconColor = Color(0xFF183153);
  return Drawer(
    backgroundColor: Colors.white,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Text.rich(
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
          ),
        ),
        mHeightSpan,
        KListtile(
          onKeyPressed: () {},
          leading: const Icon(FontAwesomeIcons.houseChimney, color: iconColor),
          title: Text(
            "Home",
            style: appTextStyle()!.copyWith(
                fontSize: AppDimens.headlineFontSizeSmall1,
                fontWeight: AppDimens.lfontweight),
          ),
        ),
        KListtile(
          onKeyPressed: () {},
          leading: const Icon(
            FontAwesomeIcons.userTie,
            color: iconColor,
          ),
          title: Text(
            "About Me",
            style: appTextStyle()!.copyWith(
                fontSize: AppDimens.headlineFontSizeSmall1,
                fontWeight: AppDimens.lfontweight),
          ),
        ),
        KListtile(
          onKeyPressed: () {},
          leading: const Icon(
            FontAwesomeIcons.listCheck,
            color: iconColor,
          ),
          title: Text(
            "Projects",
            style: appTextStyle()!.copyWith(
                fontSize: AppDimens.headlineFontSizeSmall1,
                fontWeight: AppDimens.lfontweight),
          ),
        ),
        KListtile(
          onKeyPressed: () {},
          leading: const Icon(
            FontAwesomeIcons.userClock,
            color: iconColor,
          ),
          title: Text(
            "Work",
            style: appTextStyle()!.copyWith(
                fontSize: AppDimens.headlineFontSizeSmall1,
                fontWeight: AppDimens.lfontweight),
          ),
        ),
      ],
    ),
  );
}
