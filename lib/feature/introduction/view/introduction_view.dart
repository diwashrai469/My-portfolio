import 'package:flutter/material.dart';
import 'package:myportfolio/feature/introduction/view/widgets/intro_desktop_view.dart';
import 'package:myportfolio/feature/introduction/view/widgets/intro_mobile_view.dart';
import 'package:myportfolio/feature/introduction/view/widgets/intro_tablet_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class IntroductionView extends StatelessWidget {
  const IntroductionView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => introDesktopView(),
      mobile: (p0) => introMobileView(),
      tablet: (p0) => introTabletView(),
    );
  }
}
