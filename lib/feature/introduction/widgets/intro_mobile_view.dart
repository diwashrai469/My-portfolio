import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/feature/introduction/constant/intro_constant.dart';
import 'package:myportfolio/feature/navbar/view_model/navbar_view_model.dart';

Widget introMobileView(NavBarViewModel controller) {
  return Padding(
    padding: AppDimens.mainPagePadding,
    child: Stack(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Colors.red,
                BlendMode.modulate,
              ),
              child: Lottie.asset(
                height: Get.height / 2.5,
                fit: BoxFit.cover,
                AppImage.lottiAnimationForImage,
              ),
            ),
            Column(
              children: [
                Text(
                  helloText,
                  style: appTextStyle()?.copyWith(
                      color: Colors.grey.shade200, fontSize: Get.height / 50),
                ),
                xsHeightSpan,
                Text(
                  iAmDiwashText,
                  style: appTextStyle()?.copyWith(
                      color: Colors.white,
                      fontSize: Get.height / 45,
                      fontWeight: AppDimens.lfontweight),
                ),
                xsHeightSpan,
                Text(
                  flutterDeveloperText,
                  style: appTextStyle()?.copyWith(
                    color: Colors.white,
                    fontSize: Get.height / 45,
                  ),
                ),
                mHeightSpan,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    KButton(
                      size: ButtonSize.medium,
                      bordered: true,
                      child: Text(
                        knowMoreText,
                        overflow: TextOverflow.ellipsis,
                        style: appTextStyle()?.copyWith(
                          color: Colors.white,
                          fontSize: Get.height / 60,
                        ),
                      ),
                      onPressed: () => controller.scrollToSection(1),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        Positioned(
          left: 0,
          top: 0,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: Get.width / 5.9,
            child: CircleAvatar(
              radius: Get.width / 6,
              child: ClipOval(
                child: Image.asset(
                  AppImage.myImage,
                  width: 600.0,
                  height: 600.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
