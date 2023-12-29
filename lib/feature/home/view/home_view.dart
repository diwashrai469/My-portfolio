import 'package:flutter/material.dart';
import 'package:myportfolio/feature/introduction/view/introduction_view.dart';
import 'package:myportfolio/feature/navbar/view/navbar_view.dart';
import 'package:myportfolio/feature/navbar/view/widget/nav_mobile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [NavBarView(), IntroductionView()],
        ),
      ),
    );
  }
}
