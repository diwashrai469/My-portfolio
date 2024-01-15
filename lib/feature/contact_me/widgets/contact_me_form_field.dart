import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/common/widgets/k_textformfield.dart';
import 'package:myportfolio/feature/contact_me/constant/contact_me_constant.dart';
import 'package:myportfolio/feature/contact_me/view_model/contact_view_model.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget contactMeFormField(bool isTabletView, ContactViewModel controller) {
  final formKey = GlobalKey<FormState>();

  return Form(
    key: formKey,
    child: Column(
      children: [
        Container(
          width: isTabletView ? null : Get.width / 4,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: disabledColor),
          ),
          child: Column(
            children: [
              KTextFormField(
                controller: controller.nameController,
                hint: "Name",
                label: "Name",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              mHeightSpan,
              KTextFormField(
                controller: controller.emailController,
                hint: "Email",
                label: "Email",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  } else if (!GetUtils.isEmail(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              mHeightSpan,
              KTextFormField(
                controller: controller.subjectController,
                hint: "Subject",
                label: "Subject",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the subject';
                  }
                  return null;
                },
              ),
              mHeightSpan,
              KTextFormField(
                controller: controller.messageController,
                maxLines: 9,
                hint: "Message",
                label: "Message",
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your message';
                  }
                  return null;
                },
              ),
              mHeightSpan,
              Obx(() => KButton(
                    isBusy: controller.isLoading,
                    size: isTabletView ? ButtonSize.medium : ButtonSize.large,
                    child: Expanded(
                      child: Text(
                        "Submit",
                        style: isTabletView
                            ? null
                            : appTextStyle()?.copyWith(
                                color: Colors.white,
                                fontSize: AppDimens.headlineFontSizeSmall1,
                              ),
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    onPressed: () {
                      if (formKey.currentState?.validate() ?? false) {
                        controller.submitMessgae(
                          email: controller.emailController.text,
                          message: controller.messageController.text,
                          name: controller.nameController.text,
                          subject: controller.subjectController.text,
                        );
                      }
                    },
                  ))
            ],
          ),
        ),
      ],
    ),
  );
}

Widget getInTouch(bool isTabletView) {
  return Container(
    width: isTabletView ? null : Get.width / 5,
    padding: const EdgeInsets.all(15.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: disabledColor)),
    child: Column(
      children: [
        Text(
          getInTouchText,
          style: appTextStyle()?.copyWith(
            fontWeight: AppDimens.lfontweight,
            fontSize: AppDimens.headlineFontSizeOther,
          ),
        ),
        sHeightSpan,
        Text(
          getInTouchQuickIntroText,
          textAlign: TextAlign.center,
          style: appTextStyle()?.copyWith(
            color: Colors.grey.shade500,
            fontSize: AppDimens.headlineFontSizeXSmall,
          ),
        ),
        lHeightSpan,
        Row(
          children: [
            const Icon(Icons.location_on),
            sWidthSpan,
            Expanded(
              child: Text(
                address,
                style: appTextStyle()?.copyWith(
                  fontSize: AppDimens.headlineFontSizeXSmall,
                ),
              ),
            )
          ],
        ),
        const Divider(),
        Row(
          children: [
            const Icon(Icons.email),
            sWidthSpan,
            Expanded(
              child: SelectableText(
                email,
                style: appTextStyle()?.copyWith(
                  fontSize: AppDimens.headlineFontSizeXSmall,
                ),
              ),
            ),
            const Divider(),
          ],
        )
      ],
    ),
  );
}
