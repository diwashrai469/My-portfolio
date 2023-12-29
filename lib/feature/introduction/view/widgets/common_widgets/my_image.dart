import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/feature/introduction/view/widgets/common_widgets/intro_text.dart';

Widget myImage() {
  return Stack(
    alignment: Alignment.center,
    children: [
      SizedBox(
        height: Get.height / 2.5,
        width: Get.width,
        child: ColorFiltered(
          colorFilter: const ColorFilter.mode(
            Colors.red,
            BlendMode.modulate,
          ),
          child: Lottie.asset(
            AppImage.lottiAnimationForImage,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
      Positioned(
        left: 0,
        top: 0,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 85,
          child: CircleAvatar(
            radius: 80,
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
      Positioned(
        child: introText(),
      ),
    ],
  );
}
