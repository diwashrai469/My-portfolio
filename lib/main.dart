import 'package:flutter/material.dart';
import 'package:myportfolio/feature/home/view/home_view.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:oktoast/oktoast.dart';
import 'package:get/get.dart';

void main() {
  runApp(OKToast(
    child: GetMaterialApp(
      title: "Diwash rai",
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.light,
      home: const HomeView(),
    ),
  ));
}
