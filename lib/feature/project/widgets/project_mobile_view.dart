import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/project/model/project_model.dart';

Widget projectMobileView({required bool isMobileView}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 30),
    child: Column(
      children: [
        Text(
          "Projects Involved",
          style: appTextStyle()?.copyWith(
            fontWeight: AppDimens.lfontweight,
            fontSize: AppDimens.headlineFontSizeSmall1,
          ),
        ),
        mHeightSpan,
        Wrap(
          alignment: WrapAlignment.center,
          children: projectDetails
              .map((data) => Card(
                    margin: EdgeInsets.symmetric(
                        vertical: 12, horizontal: isMobileView ? 20 : 30),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 20),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              data.image,
                              height: Get.height / 7,
                            ),
                          ),
                          sHeightSpan,
                          Text(
                            data.title,
                            style: appTextStyle()?.copyWith(
                              fontWeight: AppDimens.lfontweight,
                              fontSize: AppDimens.headlineFontSizeSSmall,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    ),
  );
}
