import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/core/services/local_storage.dart';
import 'package:myportfolio/feature/about_me/view/about_me_view.dart';
import 'package:myportfolio/feature/contact_me/view/contact_me_view.dart';
import 'package:myportfolio/feature/footer/view/footer_view.dart';
import 'package:myportfolio/feature/introduction/view/introduction_view.dart';
import 'package:myportfolio/feature/navbar/view/navbar_view.dart';
import 'package:myportfolio/feature/navbar/view_model/navbar_view_model.dart';
import 'package:myportfolio/feature/project/view/project_view.dart';
import 'package:myportfolio/feature/skills/view/skills_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with WidgetsBindingObserver {
  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.detached) {
      LocalStorageService().write(LocalStorageKeys.isAppClosed, "true");
    }

    super.didChangeAppLifecycleState(state);
  }

  @override
  Widget build(BuildContext context) {
    Get.put(NavBarViewModel());

    return GetBuilder<NavBarViewModel>(
      builder: (controller) {
        return Scaffold(
          body: Column(
            children: [
              const NavBarView(),
              Expanded(
                child: ListView(
                  controller: controller.scrollController,
                  children: const [
                    IntroductionView(),
                    AboutMeView(),
                    ProjectView(),
                    SkillsView(),
                    ContactMeView(),
                    FooterView()
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
