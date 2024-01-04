import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_listile.dart';
import 'package:myportfolio/feature/navbar/constants/navbar_constants.dart';
import 'package:myportfolio/feature/navbar/view_model/navbar_view_model.dart';
import 'package:myportfolio/feature/navbar/widget/common_widgets.dart';

Widget navMobileView(BuildContext context, NavBarViewModel controller) {
  return AppBar(
    backgroundColor: Colors.transparent,
    // leading: InkWell(
    //   onTap: () => Scaffold.of(context).openDrawer(),
    //   child: const Icon(
    //     Icons.menu,
    //     color: secondaryColor,
    //   ),
    // ),
    title: fulllname(),
    centerTitle: true,
  );
}

Widget navDrawer() {
  return Drawer(
    backgroundColor: Colors.white,
    child: Column(
      children: [
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: fulllname()),
        mHeightSpan,
        _ktileList(
          onKeyPressed: () {},
          icon: FontAwesomeIcons.houseChimney,
          text: navOptionTitle[0],
        ),
        _ktileList(
          onKeyPressed: () {},
          icon: FontAwesomeIcons.userTie,
          text: navOptionTitle[1],
        ),
        _ktileList(
          onKeyPressed: () {},
          icon: FontAwesomeIcons.listCheck,
          text: navOptionTitle[2],
        ),
        _ktileList(
          onKeyPressed: () {},
          icon: FontAwesomeIcons.userClock,
          text: navOptionTitle[3],
        ),
      ],
    ),
  );
}

Widget _ktileList(
    {String? text, IconData? icon, void Function()? onKeyPressed}) {
  const iconColor = Color(0xFF183153);

  return KListtile(
    onKeyPressed: onKeyPressed,
    leading: Icon(
      icon,
      color: iconColor,
    ),
    title: Text(
      text ?? '',
      style: appTextStyle()!.copyWith(
          fontSize: AppDimens.headlineFontSizeSmall1,
          fontWeight: AppDimens.lfontweight),
    ),
  );
}
