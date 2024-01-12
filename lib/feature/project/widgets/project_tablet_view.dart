import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/project/constant/project_view_constant.dart';
import 'package:myportfolio/feature/project/model/project_model.dart';
import 'package:myportfolio/feature/project/view_model/project_view_model.dart';
import 'package:myportfolio/theme/app_theme.dart';

class ProjectTabletView extends StatelessWidget {
  final bool isMobileView;
  final ProjectViewModel controller;
  const ProjectTabletView(
      {super.key, required this.isMobileView, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Text(
            projectTitle,
            style: appTextStyle()?.copyWith(
              fontWeight: AppDimens.lfontweight,
              fontSize: AppDimens.headlineFontSizeOther,
            ),
          ),
          mHeightSpan,
          Text(
            projectIntro,
            textAlign: TextAlign.center,
            style: appTextStyle()?.copyWith(
                fontSize: AppDimens.headlineFontSizeSmall1, color: darkGrey),
          ),
          elHeightSpan,
          projectListCard(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImage.playstore,
                height: Get.width / (2.5 * 2),
              ),
              xsWidthSpan,
              Image.asset(
                AppImage.appstore,
                height: Get.width / (5.9 * 2),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget projectListCard() {
    return Wrap(
      children: projectDetails.map((data) {
        int index = projectDetails.indexOf(data);

        return InkWell(
          focusColor: Colors.white,
          highlightColor: Colors.white,
          hoverColor: Colors.white,
          onHover: (value) {
            controller.hoverContainer(value, index);
          },
          onTap: () {
            controller.redirectPage(index);
          },
          child: Container(
            width: Get.width / 2.3,
            height: Get.height / 2.5,
            decoration: BoxDecoration(
              color: darkGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            margin: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: Get.width / 6,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          data.title,
                          style: appTextStyle()?.copyWith(
                            fontWeight: AppDimens.lfontweight,
                            color: Colors.white,
                            fontSize: AppDimens.headlineFontSizeSmall1,
                          ),
                        ),
                        mHeightSpan,
                        Text(
                          data.description,
                          style: appTextStyle()?.copyWith(
                            color: Colors.grey.shade300,
                            fontSize: AppDimens.headlineFontSizeSSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  data.image,
                  height: Get.height / 1.8,
                  width: Get.width / 10,
                )
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
