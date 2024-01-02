import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/navbar/widget/nav_desktop_view.dart';
import 'package:myportfolio/feature/navbar/widget/nav_mobile_view.dart';
import 'package:myportfolio/feature/navbar/widget/nav_tablet_view.dart';
import 'package:myportfolio/feature/navbar/view_model/navbar_view_model.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:responsive_builder/responsive_builder.dart';

List<String> navOptionTitle = ["Home", "About Me", "Project", "Work"];

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NavBarViewModel());

    return GetBuilder<NavBarViewModel>(builder: (controller) {
      return ScreenTypeLayout.builder(
        desktop: (p0) => navDesktopView(context, controller),
        mobile: (p0) => navMobileView(context),
        tablet: (p0) => navTabletView(context, controller),
      );
    });
  }
}

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
