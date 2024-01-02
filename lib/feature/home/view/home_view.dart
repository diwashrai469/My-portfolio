import 'package:flutter/material.dart';
import 'package:myportfolio/feature/about_me/view/about_me_view.dart';
import 'package:myportfolio/feature/introduction/view/introduction_view.dart';
import 'package:myportfolio/feature/navbar/view/navbar_view.dart';
import 'package:myportfolio/feature/navbar/widget/nav_mobile_view.dart';
import 'package:myportfolio/feature/project/view/project_view.dart';
import 'package:myportfolio/feature/skills/view/skills_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navDrawer(),
      body: Column(
        children: [
          const NavBarView(),
          Expanded(
            child: ListView(
              children: const [
                IntroductionView(),
                AboutMeView(),
                ProjectView(),
                SkillsView(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
