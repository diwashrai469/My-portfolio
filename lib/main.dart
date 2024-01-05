import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/core/services/local_storage.dart';
import 'package:myportfolio/feature/home/view/home_view.dart';
import 'package:myportfolio/firebase_options.dart';
import 'package:myportfolio/theme/app_theme.dart';
import 'package:oktoast/oktoast.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await LocalStorageService.init();
  LocalStorageService().write(LocalStorageKeys.isAppClosed, "true");

  runApp(
    OKToast(
      position: ToastPosition.top,
      child: GetMaterialApp(
        title: "Diwash rai",
        debugShowMaterialGrid: false,
        debugShowCheckedModeBanner: false,
        theme: AppThemes.light,
        home: const HomeView(),
      ),
    ),
  );
}
