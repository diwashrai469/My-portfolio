import 'package:flutter/material.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/feature/navbar/view/navbar_view.dart';
import 'package:myportfolio/feature/navbar/view_model/navbar_view_model.dart';

Widget navTabletView(BuildContext context, NavBarViewModel controller) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: 60,
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
                          onTap: () {},
                          style: navTextStyle(context, controller, index)),
                    ),
                  );
                },
              ),
              mWidthSpan,
              KButton(
                  size: ButtonSize.medium,
                  child: const Text("Contact Me"),
                  onPressed: () {}),
              mWidthSpan,
            ],
          ),
        ),
      ],
    ),
  );
}
