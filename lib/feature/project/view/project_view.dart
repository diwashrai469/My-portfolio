import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/feature/project/view_model/project_view_model.dart';
import 'package:myportfolio/feature/project/widgets/project_mobile_view.dart';
import 'package:myportfolio/feature/project/widgets/project_desktop_view.dart';
import 'package:myportfolio/feature/project/widgets/project_tablet_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectView extends StatelessWidget {
  const ProjectView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProjectViewModel());
    return GetBuilder<ProjectViewModel>(builder: (controller) {
      return ScreenTypeLayout.builder(
        desktop: (p0) =>
            PorjectDisktopView(isMobileView: false, controller: controller),
        mobile: (p0) =>
            ProjectMobileView(isMobileView: true, controller: controller),
        tablet: (p0) =>
            ProjectTabletView(isMobileView: true, controller: controller),
      );
    });
  }
}
