import 'package:myportfolio/common/constant/app_image.dart';

class SkillsList {
  String image;
  String title;
  SkillsList({
    required this.image,
    required this.title,
  });
}

List skillsList = [
  SkillsList(image: AppImage.flutter, title: "Flutter"),
  SkillsList(image: AppImage.dart, title: "Dart"),
  SkillsList(image: AppImage.firebase, title: "Firebase"),
  SkillsList(image: AppImage.github, title: "Github"),
  SkillsList(image: AppImage.postman, title: "Postman"),
  SkillsList(image: AppImage.html, title: "HTML"),
  SkillsList(image: AppImage.css, title: "CSS"),
  SkillsList(image: AppImage.javascript, title: "javascript"),
  // SkillsList(image: AppImage.react, title: "React.js"),
  // SkillsList(image: AppImage.tailwind, title: "Tailwind"),
];
