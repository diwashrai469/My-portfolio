import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/project/model/project_model.dart';
import 'package:myportfolio/feature/project/project_view_model/project_view_model.dart';
import 'package:myportfolio/theme/app_theme.dart';

class ProjectMobileTableAndDesktopView extends StatelessWidget {
  final bool isMobileView;
  final ProjectViewModel controller;
  const ProjectMobileTableAndDesktopView(
      {super.key, required this.isMobileView, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        children: [
          Text(
            "Projects Involved",
            style: appTextStyle()?.copyWith(
              fontWeight: AppDimens.lfontweight,
              fontSize: AppDimens.headlineFontSizeOther,
            ),
          ),
          mHeightSpan,
          Text(
            "Here are the projects I've undertaken throughout my journey in Flutter development",
            textAlign: TextAlign.center,
            style: appTextStyle()?.copyWith(
                fontSize: AppDimens.headlineFontSizeSSmall, color: darkGrey),
          ),
          lHeightSpan,
          projectListCard(),
          mHeightSpan,
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              AppImage.platforms,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }

  Widget projectListCard() {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: projectDetails
            .map((data) => Container(
                  width: Get.width / 4,
                  height: Get.height / 2.5,
                  decoration: BoxDecoration(
                    color: darkGrey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: Get.width / 9,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              data.title,
                              style: appTextStyle()?.copyWith(
                                fontWeight: AppDimens.lfontweight,
                                color: Colors.white,
                                fontSize: AppDimens.headlineFontSizeSmall,
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
                      Image.asset(
                        data.image,
                        height: 300,
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
