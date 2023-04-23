import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/string_text.dart';

class Major {
  final String? name, text, imagePath;
  final List<String>? techStack;

  Major({this.name, this.text, this.imagePath, this.techStack});
}

final List<Major> major = [
  Major(
      name: "Mobile development",
      text: StringText.majorMobile,
      imagePath: Assets.mobileDevJpg,
      techStack: [
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/kotlin/kotlin-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/androidstudio/androidstudio-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/swift/swift-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/xcode/xcode-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/dart/dart-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/flutter/flutter-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/vscode/vscode-original.svg",
        "https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg",
        "https://www.vectorlogo.zone/logos/amazon_aws/amazon_aws-icon.svg",
      ]),
  Major(
      name: "Backend development",
      text: StringText.majorBackend,
      imagePath: Assets.backendDevPng,
      techStack: [
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/typescript/typescript-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original-wordmark.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/express/express-original-wordmark.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/mongodb/mongodb-original-wordmark.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/java/java-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/spring/spring-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/csharp/csharp-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/dot-net/dot-net-original-wordmark.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/vscode/vscode-original.svg",
        "https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg"
      ]),
];
