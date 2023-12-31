import 'package:flutter/material.dart';
import 'package:myportfolio/feature/skills/widgets/skills_mobile_view.dart';
import 'package:myportfolio/feature/skills/widgets/skills_tablet_and_desktop_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => skillsTabletAndDesktopView(false),
      mobile: (p0) => skillsMobileView(),
      tablet: (p0) => skillsTabletAndDesktopView(true),
    );
  }
}
