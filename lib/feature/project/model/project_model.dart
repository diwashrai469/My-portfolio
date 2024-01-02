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
      image: AppImage.chibiHR,
      title: "ChibiHR",
      description:
          "Your One-Stop Solution for Effortless HR and Workforce Management, Providing an Exceptional Digital Experience on Web and Mobile."),
  ProjectList(
      image: AppImage.dynoCrm,
      title: "dynoCRM",
      description:
          "DynoCRM is a cutting-edge customer relationship management (CRM) solution designed to revolutionize the way businesses manage and nurture their customer relationships. With a focus on enhancing sales effectiveness, streamlining processes, and maximizing customer satisfaction, DynoCRM empowers businesses across various industries to drive growth and achieve unparalleled success."),
  ProjectList(
      image: AppImage.dynoTeams,
      title: "dynoTeam",
      description:
          "With dynoTeams, experience the power of custom hierarchy levels for efficient project management. Set and customize hierarchy levels to fit your business needs, enabling better organization and delegation of tasks. Maximize productivity and streamline workflows with dynoTeams' innovative hierarchy system."),
  ProjectList(
      image: AppImage.moury,
      title: "Moury",
      description:
          "Moury lets you chat and make new friends.Nepali social meadai app."),
];
