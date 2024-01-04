import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/feature/contact_me/view_model/contact_view_model.dart';
import 'package:myportfolio/feature/contact_me/widgets/contact_me_mobile_view.dart';
import 'package:myportfolio/feature/contact_me/widgets/contact_me_tablet_and_desktop_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactMeView extends StatelessWidget {
  const ContactMeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ContactViewModel());
    return GetBuilder<ContactViewModel>(builder: (controller) {
      return ScreenTypeLayout.builder(
        desktop: (p0) => contactMeTabletAndDesktopView(false, controller),
        mobile: (p0) => contactMeMobileView(controller),
        tablet: (p0) => contactMeTabletAndDesktopView(true, controller),
      );
    });
  }
}
