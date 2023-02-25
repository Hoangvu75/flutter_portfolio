import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/string_text.dart';

class Major {
  final String? name, text, imagePath, tech, description;

  Major({this.name, this.text, this.imagePath, this.tech, this.description});
}

final List<Major> major = [
  Major(
    name: "Android development",
    text: StringText.majorAndroid,
    imagePath: Assets.androidJpg,
    tech: "Android",
    description: StringText.descriptionAndroid,
  ),
  Major(
    name: "Flutter development",
    text: StringText.majorFlutter,
    imagePath: Assets.flutterPng,
    tech: "Flutter",
    description: StringText.descriptionFlutter,
  ),
];
