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

Widget contactMeMobileView(ContactViewModel controller) {
  final formKey = GlobalKey<FormState>();

  return Form(
    key: formKey,
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 18),
      child: Column(
        children: [
          Text(
            contactMeTitle,
            style: appTextStyle()?.copyWith(
              fontWeight: AppDimens.lfontweight,
              fontSize: AppDimens.headlineFontSizeSmall1,
            ),
          ),
          mHeightSpan,
          Container(
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: disabledColor)),
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
                      child: const Expanded(
                        child: Text(
                          "Submit",
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
          lHeightSpan,
          Container(
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
                    fontSize: AppDimens.headlineFontSizeSmall1,
                  ),
                ),
                sHeightSpan,
                Text(
                  getInTouchQuickIntroText,
                  textAlign: TextAlign.center,
                  style: appTextStyle()?.copyWith(color: Colors.grey.shade500),
                ),
                lHeightSpan,
                const Row(
                  children: [
                    Icon(Icons.location_on),
                    sWidthSpan,
                    Expanded(
                      child: Text(address),
                    )
                  ],
                ),
                const Divider(),
                const Row(
                  children: [
                    Icon(Icons.email),
                    sWidthSpan,
                    Expanded(
                      child: Text(email),
                    ),
                    Divider(),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}
