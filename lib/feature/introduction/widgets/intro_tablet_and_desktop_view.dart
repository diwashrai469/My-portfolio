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
import 'package:myportfolio/theme/app_theme.dart';

Widget introTabletAndDesktopView(
    NavBarViewModel controller, bool istabletView) {
  return Padding(
    padding: AppDimens.mainPagePadding,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              helloText,
              textAlign: TextAlign.left,
              style: appTextStyle()?.copyWith(
                  color: disabledColor,
                  fontSize: istabletView
                      ? AppDimens.headlineFontSizeSSmall
                      : AppDimens.headlineFontSizeOther),
            ),
            xsHeightSpan,
            Text(
              iAmDiwashText,
              style: appTextStyle()?.copyWith(
                  fontSize: istabletView
                      ? AppDimens.headlineFontSizeSmall1
                      : AppDimens.headlineFontSizeLarge,
                  fontWeight: AppDimens.lfontweight),
            ),
            Text(
              flutterDeveloperText,
              style: appTextStyle()?.copyWith(
                fontSize: istabletView
                    ? AppDimens.headlineFontSizeSmall1
                    : AppDimens.headlineFontSizeLarge,
              ),
            ),
            mHeightSpan,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                KButton(
                  size: istabletView ? ButtonSize.medium : ButtonSize.large,
                  bordered: true,
                  child: Text(
                    knowMoreText,
                    style: appTextStyle()?.copyWith(
                        fontSize: istabletView
                            ? AppDimens.headlineFontSizeSSmall
                            : AppDimens.headlineFontSizeSmall1,
                        color: Colors.white),
                  ),
                  onPressed: () => controller.scrollToSection(1),
                ),
              ],
            )
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: istabletView ? Get.height / 2.5 : Get.height / 2,
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
              bottom: 0,
              child: Image.asset(
                AppImage.myImage,
                width: istabletView ? 400.0 : 500.0,
                height: istabletView ? 410.0 : 480,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

class AnimatedIntroTabletAndDesktopView extends StatefulWidget {
  final NavBarViewModel controller;
  final bool isTabletView;

  const AnimatedIntroTabletAndDesktopView({
    super.key,
    required this.controller,
    required this.isTabletView,
  });

  @override
  _AnimatedIntroTabletAndDesktopViewState createState() =>
      _AnimatedIntroTabletAndDesktopViewState();
}

class _AnimatedIntroTabletAndDesktopViewState
    extends State<AnimatedIntroTabletAndDesktopView>
    with SingleTickerProviderStateMixin {
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
                  child: introTabletAndDesktopView(
                      widget.controller, widget.isTabletView),
                ),
              );
            },
          )
        : introTabletAndDesktopView(widget.controller, widget.isTabletView);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
