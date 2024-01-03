import 'package:flutter/material.dart';
import 'package:myportfolio/common/constant/app_dimens.dart';
import 'package:myportfolio/common/constant/ui_helpers.dart';
import 'package:myportfolio/common/utils/app_text_style.dart';
import 'package:myportfolio/common/widgets/k_button.dart';
import 'package:myportfolio/common/widgets/k_textformfield.dart';
import 'package:myportfolio/feature/contact_me/constant/contact_me_constant.dart';
import 'package:myportfolio/theme/app_theme.dart';

Widget contactMeMobileView() {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  return Container(
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
                controller: nameController,
                hint: "Name",
                label: "Name",
              ),
              mHeightSpan,
              KTextFormField(
                controller: emailController,
                hint: "Email",
                label: "Email",
              ),
              mHeightSpan,
              KTextFormField(
                controller: subjectController,
                hint: "Subject",
                label: "Subject",
              ),
              mHeightSpan,
              KTextFormField(
                controller: messageController,
                maxLines: 9,
                hint: "Message",
                label: "Message",
              ),
              mHeightSpan,
              KButton(
                child: const Expanded(
                  child: Text(
                    "Submit",
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                onPressed: () {},
              )
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
  );
}
