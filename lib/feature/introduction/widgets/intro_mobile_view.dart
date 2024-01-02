import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/feature/introduction/common_widgets/intro_text.dart';

Widget introMobileView() {
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
            introText()
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
