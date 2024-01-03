import 'package:flutter/material.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/feature/navbar/constants/navbar_constants.dart';
import 'package:myportfolio/feature/navbar/view_model/navbar_view_model.dart';
import 'package:myportfolio/feature/navbar/widget/common_widgets.dart';

Widget navTabletView(BuildContext context, NavBarViewModel controller) {
  return SizedBox(
    height: 80,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: navOptionTitle.length,
          itemBuilder: (context, index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: kInkwell(
                    title: navOptionTitle[index],
                    onHover: (value) {
                      controller.changeButtonTextColor(value, index);
                    },
                    onTap: () => controller.onPressNavbarOption(index),
                    style: navTextStyle(context, controller, index)),
              ),
            );
          },
        ),
        mWidthSpan,
        KButton(
          size: ButtonSize.medium,
          child: const Text(contactMe),
          onPressed: () => controller.scrollToSection(4),
        ),
        mWidthSpan,
      ],
    ),
  );
}
