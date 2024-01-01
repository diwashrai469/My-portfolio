import 'package:flutter/material.dart';
import 'package:myportfolio/feature/about_me/view/widgets/about_me_desktop_view.dart';
import 'package:myportfolio/feature/about_me/view/widgets/about_me_mobile_view.dart';
import 'package:myportfolio/feature/about_me/view/widgets/about_me_tablet_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutMeView extends StatelessWidget {
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => aboutMeDesktopView(),
      mobile: (p0) => aboutMeMobileView(),
      tablet: (p0) => aboutMeTabletView(),
    );
  }
}
