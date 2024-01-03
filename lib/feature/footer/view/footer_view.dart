import 'package:flutter/material.dart';
import 'package:myportfolio/feature/footer/widgets/footer_mobile_view.dart';
import 'package:myportfolio/feature/footer/widgets/footer_tablet_and_desktop_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => footerTableAndDesktopView(false),
      mobile: (p0) => footerMobileView(),
      tablet: (p0) => footerTableAndDesktopView(true),
    );
  }
}
