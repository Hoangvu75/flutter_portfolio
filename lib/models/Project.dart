import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/string_text.dart';

class Project {
  final String? title, description, sourceCode, videoDemo, playStore, background, liveDemo;
  final List<String> techStack;

  Project(
      {this.title,
      this.description,
      this.sourceCode,
      this.videoDemo,
      this.playStore,
      this.background,
      this.liveDemo,
      required this.techStack});
}

List<Project> demoProjects = [
  Project(
    title: "Crypto Finance",
    description: StringText.pjCryptoFinanceDescription,
    sourceCode: "https://github.com/Hoangvu75/flutter_crypto_finance",
    videoDemo: "https://youtu.be/CEZ-543k5mI",
    playStore: "",
    liveDemo: "",
    background: Assets.cryptoFinanceBgJpg,
    techStack: [
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/androidstudio/androidstudio-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/dart/dart-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/flutter/flutter-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/typescript/typescript-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original-wordmark.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/express/express-original-wordmark.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/vscode/vscode-original.svg",
    ],
  ),
  Project(
    title: "Chat",
    description: StringText.pjChatDescription,
    sourceCode: "https://github.com/Hoangvu75/flutter_chatapp",
    videoDemo: "https://youtu.be/AfahaITorLE",
    playStore: "",
    liveDemo: "",
    background: Assets.chatBgPng,
    techStack: [
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/androidstudio/androidstudio-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/dart/dart-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/flutter/flutter-original.svg",
      "https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/typescript/typescript-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original-wordmark.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/express/express-original-wordmark.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/mongodb/mongodb-original-wordmark.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/vscode/vscode-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/docker/docker-original.svg"
    ],
  ),
  Project(
    title: "Still chat but other framework",
    description: StringText.pjOtherChatDescription,
    sourceCode: "https://github.com/Hoangvu75/jetpack_messaging",
    videoDemo: "https://youtu.be/69ecMv26Jyw",
    playStore: "",
    liveDemo: "",
    background: Assets.chatBgPng,
    techStack: [
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/androidstudio/androidstudio-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/kotlin/kotlin-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/javascript/javascript-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/typescript/typescript-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/nodejs/nodejs-original-wordmark.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/express/express-original-wordmark.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/mongodb/mongodb-original-wordmark.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/vscode/vscode-original.svg"
    ],
  ),
  Project(
    title: "Reading comics",
    description: StringText.pjReadingComicsDescription,
    sourceCode: "https://github.com/Hoangvu75/flutter_truyenfull",
    videoDemo: "https://youtu.be/cyOjZH_GfDI",
    playStore: "",
    liveDemo: "",
    background: Assets.lnBackgroundJpg,
    techStack: [
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/androidstudio/androidstudio-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/dart/dart-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/flutter/flutter-original.svg",
    ],
  ),
  Project(
    title: "CR7 Landing page",
    description: StringText.cr7LandingPageDescription,
    sourceCode: "",
    videoDemo: "",
    playStore: "",
    liveDemo: "https://hoangvu75.github.io/cr7-landing-page/",
    background: Assets.cr7LandingPageBgPng,
    techStack: [
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/androidstudio/androidstudio-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/dart/dart-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/flutter/flutter-original.svg",
    ],
  ),
  Project(
    title: "Social network",
    description: StringText.pjSocialNetworkDescription,
    sourceCode: "https://github.com/Hoangvu75/android_social_network",
    videoDemo: "https://youtu.be/EuloBRA_V9Q",
    playStore: "",
    liveDemo: "",
    background: Assets.socialNetworkBgJpg,
    techStack: [
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/androidstudio/androidstudio-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/kotlin/kotlin-original.svg",
      "https://www.vectorlogo.zone/logos/firebase/firebase-icon.svg",
    ],
  ),
  Project(
    title: "Weather forecast",
    description: StringText.pjWeatherDescription,
    sourceCode: "https://github.com/Hoangvu75/android_weather_forecast",
    videoDemo: "https://youtu.be/KFTPafv0PYQ",
    playStore: "",
    liveDemo: "",
    background: Assets.weatherBgJpg,
    techStack: [
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/androidstudio/androidstudio-original.svg",
      "https://raw.githubusercontent.com/devicons/devicon/master/icons/kotlin/kotlin-original.svg",
    ],
  ),
  // Project(
  //   title: "Xinhxinhlive",
  //   description: StringText.pjXinhxinhliveDescription,
  //   sourceCode: "",
  //   videoDemo: "",
  //   playStore: "https://play.google.com/store/apps/details?id=com.flive.xinhxinhlive&hl=vi&gl=US",
  //   liveDemo: "",
  //   background: Assets.xinhxinhBgPng,
  // ),
  // Project(
  //   title: "Techday 2022",
  //   description: StringText.pjTechdayDescription,
  //   sourceCode: "",
  //   videoDemo: "",
  //   playStore: "https://play.google.com/store/apps/details?id=com.fpt.techday&hl=en_US&gl=US&pli=1",
  //   liveDemo: "",
  //   background: Assets.techdayBgJpg,
  // ),
];
