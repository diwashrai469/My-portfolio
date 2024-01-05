import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/app_image.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/core/services/local_storage.dart';
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

class AnimatedIntroMobileView extends StatefulWidget {
  final NavBarViewModel controller;

  const AnimatedIntroMobileView({
    super.key,
    required this.controller,
  });

  @override
  _AnimatedIntroTabletAndDesktopViewState createState() =>
      _AnimatedIntroTabletAndDesktopViewState();
}

class _AnimatedIntroTabletAndDesktopViewState
    extends State<AnimatedIntroMobileView> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final String? _animationPlayed =
      LocalStorageService().read(LocalStorageKeys.isAppClosed);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 5, end: 0.1).animate(_controller);

    _controller.forward();
    LocalStorageService().write(LocalStorageKeys.isAppClosed, "false");
  }

  @override
  Widget build(BuildContext context) {
    return _animationPlayed == "true"
        ? AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, _animation.value * 50),
                child: Opacity(
                  opacity: _animation.value < 0
                      ? 1
                      : _animation.value > 1
                          ? 0
                          : 1 - _animation.value,
                  child: introMobileView(
                    widget.controller,
                  ),
                ),
              );
            },
          )
        : introMobileView(
            widget.controller,
          );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
