import 'package:carousel_slider/carousel_slider.dart';
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

class ProjectMobileView extends StatelessWidget {
  final bool isMobileView;
  final ProjectViewModel controller;
  const ProjectMobileView(
      {super.key, required this.isMobileView, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Text(
            projectTitle,
            style: appTextStyle()?.copyWith(
              fontWeight: AppDimens.lfontweight,
              fontSize: AppDimens.headlineFontSizeSmall1,
            ),
          ),
          mHeightSpan,
          Text(
            projectIntro,
            textAlign: TextAlign.center,
            style: appTextStyle()?.copyWith(
                fontSize: AppDimens.headlineFontSizeXSmall, color: darkGrey),
          ),
          lHeightSpan,
          projectListCard(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImage.playstore,
                height: Get.width / (2.5 * 1.5),
              ),
              xsWidthSpan,
              Image.asset(
                AppImage.appstore,
                height: Get.width / (5.9 * 1.5),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget projectListCard() {
    return CarouselSlider(
      items: projectDetails
          .map(
            (data) => GestureDetector(
              onTap: () {
                int index = projectDetails.indexOf(data);

                controller.redirectPage(index);
              },
              child: Container(
                width: Get.width,
                height: Get.height / 2.5,
                decoration: BoxDecoration(
                  color: darkGrey,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: Get.width / 3,
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
                                fontSize: AppDimens.headlineFontSizeSSmall,
                              ),
                            ),
                            mHeightSpan,
                            Text(
                              data.description,
                              style: appTextStyle()?.copyWith(
                                color: Colors.grey.shade300,
                                fontSize: AppDimens.headlineFontSizeXSmall,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Image.asset(
                      data.image,
                      height: Get.height / 5,
                      width: Get.width / 4,
                    )
                  ],
                ),
              ),
            ),
          )
          .toList(),
      options: CarouselOptions(
        height: Get.height / 2.5,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
