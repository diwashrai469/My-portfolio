import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/project/model/project_model.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget projectTabletView() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
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
              .map((data) => Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 20),
                    decoration: BoxDecoration(
                        border: Border.all(color: disabledColor),
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            data.image,
                            height: Get.height / 7,
                          ),
                        ),
                        mHeightSpan,
                        Text(
                          data.title,
                          style: appTextStyle()?.copyWith(
                            fontWeight: AppDimens.lfontweight,
                            fontSize: AppDimens.headlineFontSizeSSmall,
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        )
      ],
    ),
  );
}
