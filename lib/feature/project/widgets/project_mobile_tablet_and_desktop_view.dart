import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'dart:math' as math;
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/feature/project/model/project_model.dart';
import 'package:myportfolio/feature/project/project_view_model/project_view_model.dart';

class ProjectMobileTableAndDesktopView extends StatefulWidget {
  final bool isMobileView;
  final ProjectViewModel controller;
  const ProjectMobileTableAndDesktopView(
      {super.key, required this.isMobileView, required this.controller});

  @override
  State<ProjectMobileTableAndDesktopView> createState() =>
      _ProjectMobileTableAndDesktopViewState();
}

class _ProjectMobileTableAndDesktopViewState
    extends State<ProjectMobileTableAndDesktopView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isFront = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _flipCard() {
    if (_controller.status != AnimationStatus.forward) {
      if (_isFront) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
      _isFront = !_isFront;
    }
  }

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
          .map(
            (data) => GestureDetector(
              onTap: () => _flipCard(),
              child: Transform(
                transform: Matrix4.rotationY(_animation.value * math.pi)
                  ..scale(_isFront ? 1.0 : -1.0, 1.0),
                alignment: Alignment.center,
                child: _isFront
                    ? Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: widget.isMobileView ? 10 : 30),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: SizedBox(
                            height: 250,
                            width: 200,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
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
                          ),
                        ),
                      )
                    : Card(
                        margin: EdgeInsets.symmetric(
                            vertical: 12,
                            horizontal: widget.isMobileView ? 10 : 30),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: SizedBox(
                            height: 250,
                            width: 200,
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Text(
                                    data.title,
                                    style: appTextStyle()?.copyWith(
                                      fontWeight: AppDimens.lfontweight,
                                      fontSize:
                                          AppDimens.headlineFontSizeSmall1,
                                    ),
                                  ),
                                  mHeightSpan,
                                  Text(
                                    data.description,
                                    style: appTextStyle()?.copyWith(
                                      color: Colors.grey.shade600,
                                      fontSize:
                                          AppDimens.headlineFontSizeXSmall,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
              ),
            ),
          )
          .toList(),
    );
  }
}
