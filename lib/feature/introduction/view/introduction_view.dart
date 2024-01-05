import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/feature/introduction/widgets/intro_mobile_view.dart';
import 'package:myportfolio/feature/introduction/widgets/intro_tablet_and_desktop_view.dart';
import 'package:myportfolio/feature/navbar/view_model/navbar_view_model.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NavBarViewModel());
    return GetBuilder<NavBarViewModel>(builder: (controller) {
      return ScreenTypeLayout.builder(
        desktop: (p0) => AnimatedIntroTabletAndDesktopView(
            controller: controller, isTabletView: false),
        mobile: (p0) => AnimatedIntroMobileView(
          controller: controller,
        ),
        tablet: (p0) => AnimatedIntroTabletAndDesktopView(
          controller: controller,
          isTabletView: true,
        ),
      );
    });
  }
}
