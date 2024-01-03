import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/feature/navbar/view_model/navbar_view_model.dart';
import 'package:myportfolio/feature/navbar/widget/nav_desktop_view.dart';
import 'package:myportfolio/feature/navbar/widget/nav_mobile_view.dart';
import 'package:myportfolio/feature/navbar/widget/nav_tablet_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBarView extends StatelessWidget {
  const NavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NavBarViewModel());

    return GetBuilder<NavBarViewModel>(builder: (controller) {
      return ScreenTypeLayout.builder(
        desktop: (p0) => navDesktopView(context, controller),
        mobile: (p0) => navMobileView(context, controller),
        tablet: (p0) => navTabletView(context, controller),
      );
    });
  }
}
