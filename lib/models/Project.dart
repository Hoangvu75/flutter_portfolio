import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/string_text.dart';

class Project {
  final String? title, description, sourceCode, videoDemo, playStore, background, liveDemo;

  Project({this.title, this.description, this.sourceCode, this.videoDemo, this.playStore, this.background, this.liveDemo});
}

List<Project> demoProjects = [
  Project(
    title: "Crypto Finance",
    description: StringText.pjCryptoFinanceDescription,
    sourceCode: "https://github.com/Hoangvu75/flutter_crypto_finance",
    videoDemo: "https://www.youtube.com/watch?v=CEZ-543k5mI",
    playStore: "",
    liveDemo: "",
    background: Assets.cryptoFinanceBgJpg,
  ),
  Project(
    title: "Chat",
    description: StringText.pjChatDescription,
    sourceCode: "https://github.com/Hoangvu75/flutter_chatapp",
    videoDemo: "https://www.youtube.com/watch?v=AfahaITorLE",
    playStore: "",
    liveDemo: "",
    background: Assets.chatBgPng,
  ),
  Project(
    title: "Movie app",
    description: StringText.pjMovieDescription,
    sourceCode: "https://github.com/Hoangvu75/flutter_movie_provider",
    videoDemo: "https://www.youtube.com/watch?v=gJAht8FKqQk",
    playStore: "",
    liveDemo: "",
    background: Assets.movieBgJpg,
  ),
  Project(
    title: "CR7 Landing page",
    description: StringText.cr7LandingPageDescription,
    sourceCode: "",
    videoDemo: "",
    playStore: "",
    liveDemo: "https://hoangvu75.github.io/cr7-landing-page/",
    background: Assets.cr7LandingPageBgPng,
  ),
  Project(
    title: "Social network",
    description: StringText.pjSocialNetworkDescription,
    sourceCode: "https://github.com/Hoangvu75/android_social_network",
    videoDemo: "https://www.youtube.com/watch?v=EuloBRA_V9Q&t=17s",
    playStore: "",
    liveDemo: "",
    background: Assets.socialNetworkBgJpg,
  ),
  Project(
    title: "Light Novel",
    description: StringText.pjLightNovelDescription,
    sourceCode: "https://github.com/Hoangvu75/flutter-light-novel",
    videoDemo: "https://www.youtube.com/watch?v=sp6QHsP7gAo",
    playStore: "",
    liveDemo: "",
    background: Assets.lnBackgroundJpg,
  ),
  Project(
    title: "Weather forecast",
    description: StringText.pjWeatherDescription,
    sourceCode: "https://github.com/Hoangvu75/android_weather_forecast",
    videoDemo: "https://www.youtube.com/watch?v=KFTPafv0PYQ",
    playStore: "",
    liveDemo: "",
    background: Assets.weatherBgJpg,
  ),
  Project(
    title: "Student Manager",
    description: StringText.pjStudentManagerDescription,
    sourceCode: "https://github.com/Hoangvu75/nodejs_student_manager",
    videoDemo: "",
    playStore: "",
    liveDemo: "https://nodejs-student-manager.fly.dev",
    background: Assets.studentManagerBgPng,
  ),
  Project(
    title: "Xinhxinhlive",
    description: StringText.pjXinhxinhliveDescription,
    sourceCode: "",
    videoDemo: "",
    playStore: "https://play.google.com/store/apps/details?id=com.flive.xinhxinhlive&hl=vi&gl=US",
    liveDemo: "",
    background: Assets.xinhxinhBgPng,
  ),
  Project(
    title: "Techday 2022",
    description: StringText.pjTechdayDescription,
    sourceCode: "",
    videoDemo: "",
    playStore: "https://play.google.com/store/apps/details?id=com.fpt.techday&hl=en_US&gl=US&pli=1",
    liveDemo: "",
    background: Assets.techdayBgJpg,
  ),
];
