import 'package:flutter/material.dart';
import 'package:myportfolio/feature/contact_me/widgets/contact_me_mobile_view.dart';
import 'package:myportfolio/feature/contact_me/widgets/contact_me_tablet_and_desktop_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactMeView extends StatelessWidget {
  const ContactMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => contactMeTabletAndDesktopView(false),
      mobile: (p0) => contactMeMobileView(),
      tablet: (p0) => contactMeTabletAndDesktopView(true),
    );
  }
}
