import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/feature/skills/view_model/skill_view_model.dart';
import 'package:myportfolio/feature/skills/widgets/skills_tablet_and_desktop_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsView extends StatelessWidget {
  const SkillsView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SkillViewModel());
    return GetBuilder<SkillViewModel>(
      builder: (controller) {
        return ScreenTypeLayout.builder(
          desktop: (p0) => skillsTabletAndDesktopView(
              controller: controller, isTabletView: false, isMoblieView: false),
          mobile: (p0) => skillsTabletAndDesktopView(
              controller: controller, isTabletView: true, isMoblieView: true),
          tablet: (p0) => skillsTabletAndDesktopView(
              controller: controller, isTabletView: true, isMoblieView: false),
        );
      },
    );
  }
}
