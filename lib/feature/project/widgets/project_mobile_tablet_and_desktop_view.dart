import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/project/model/project_model.dart';
import 'package:myportfolio/feature/project/project_view_model/project_view_model.dart';

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
          lHeightSpan,
          projectListCard(),
        ],
      ),
    );
  }

  Widget projectListCard() {
    return Wrap(
      alignment: WrapAlignment.center,
      children: projectDetails
          .map((data) => Container(
                margin: const EdgeInsets.all(10),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Card(
                      color: Colors.grey,
                      margin: EdgeInsets.symmetric(
                          vertical: 40, horizontal: isMobileView ? 10 : 30),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 20),
                        child: SizedBox(
                          height: 300,
                          width: 200,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: Get.height / 18,
                                ),
                                Text(
                                  data.title,
                                  style: appTextStyle()?.copyWith(
                                    fontWeight: AppDimens.lfontweight,
                                    color: Colors.white,
                                    fontSize: AppDimens.headlineFontSizeSSmall,
                                  ),
                                ),
                                mHeightSpan,
                                Text(
                                  data.description,
                                  style: appTextStyle()?.copyWith(
                                    color: Colors.grey.shade200,
                                    fontSize: AppDimens.headlineFontSizeSSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          data.image,
                          height: Get.height / 10,
                        ),
                      ),
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }
}
