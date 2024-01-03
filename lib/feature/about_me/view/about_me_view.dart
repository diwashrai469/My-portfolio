import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/feature/about_me/about_me_view_model/about_me_view_model.dart';
import 'package:myportfolio/feature/about_me/widgets/about_me_mobile_view.dart';
import 'package:myportfolio/feature/about_me/widgets/about_me_tablet_and_desktop_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AboutMeViewModel());
    return GetBuilder<AboutMeViewModel>(builder: (controller) {
      return ScreenTypeLayout.builder(
        desktop: (p0) => aboutMeTabletAndDesktopView(controller, false),
        mobile: (p0) => aboutMeMobileView(controller),
        tablet: (p0) => aboutMeTabletAndDesktopView(controller, true),
      );
    });
  }
}
