import 'package:flutter/material.dart';
import 'package:myportfolio/feature/project/widgets/project_mobile_tablet_and_desktop_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => projectMobileTableAndDesktopView(isMobileView: false),
      mobile: (p0) => projectMobileTableAndDesktopView(isMobileView: true),
      tablet: (p0) => projectMobileTableAndDesktopView(isMobileView: true),
    );
  }
}
