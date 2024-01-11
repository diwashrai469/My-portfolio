import 'package:myportfolio/common/constant/app_image.dart';

class ProjectList {
  String image;
  String title;
  String description;
  ProjectList({
    required this.image,
    required this.title,
    required this.description,
  });
}

List projectDetails = [
  ProjectList(
      image: AppImage.mobileViewChibiHr,
      title: "ChibiHR",
      description:
          "Exceptional HR and Workforce Management on Web and Mobile."),
  ProjectList(
      image: AppImage.mobileViewCrmFront,
      title: "dynoCRM",
      description:
          "DynoCRM revolutionizes customer management with cutting-edge capabilities."),
  ProjectList(
      image: AppImage.mobileViewDynoteams,
      title: "dynoTeam",
      description: "Efficient project management with custom hierarchy."),
  ProjectList(
      image: AppImage.mobileViewMouryMobile,
      title: "Moury",
      description:
          "Moury lets you chat and make new friends. Nepali social media app."),
];
