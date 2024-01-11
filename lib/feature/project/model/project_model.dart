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
          "Your One-Stop Solution for Effortless HR and Workforce Management, Providing an Exceptional Digital Experience on Web and Mobile."),
  ProjectList(
      image: AppImage.mobileViewCrmFront,
      title: "dynoCRM",
      description:
          "DynoCRM is a cutting-edge customer relationship management (CRM) solution designed to revolutionize the way businesses manage and nurture their customer relationships."),
  ProjectList(
      image: AppImage.mobileViewDynoteams,
      title: "dynoTeam",
      description:
          "With dynoTeams, experience the power of custom hierarchy levels for efficient project management. Set and customize hierarchy levels to fit your business needs, enabling better organization and delegation of tasks."),
  ProjectList(
      image: AppImage.mobileViewMouryMobile,
      title: "Moury",
      description:
          "Moury lets you chat and make new friends.Nepali social meadai app."),
];
