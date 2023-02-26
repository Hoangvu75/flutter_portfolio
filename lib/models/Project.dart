import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/string_text.dart';

class Project {
  final String? title, description, sourceCode, videoDemo, playStore, background, liveDemo;

  Project({this.title, this.description, this.sourceCode, this.videoDemo, this.playStore, this.background, this.liveDemo});
}

List<Project> demoProjects = [
  Project(
    title: "Chat",
    description: StringText.pjChatDescription,
    sourceCode: "https://github.com/Hoangvu75/flutter_chatapp",
    videoDemo: "https://drive.google.com/file/d/1AVF5pSkILjJNW3rvE2WMJGY-kEYjmlnd/view?usp=sharing",
    playStore: "",
    liveDemo: "",
    background: Assets.chatBgPng,
  ),
  Project(
    title: "Movie app",
    description: StringText.pjMovieDescription,
    sourceCode: "https://github.com/Hoangvu75/flutter_movie_provider",
    videoDemo: "https://drive.google.com/file/d/19yj-3DyX5i9WCPV_wBloDvfumAslVIXD/view?usp=sharing",
    playStore: "",
    liveDemo: "",
    background: Assets.movieBgJpg,
  ),
  Project(
    title: "Social network",
    description: StringText.pjSocialNetworkDescription,
    sourceCode: "https://github.com/Hoangvu75/android_social_network",
    videoDemo: "https://drive.google.com/file/d/1-KFMDq9XlgcSBRuY2Yddlg7ZzPhno_jF/view?usp=sharing",
    playStore: "",
    liveDemo: "",
    background: Assets.socialNetworkBgJpg,
  ),
  Project(
    title: "Hoang Vu's Tech Blog",
    description: StringText.pjHoangVuTechBlogDescription,
    sourceCode: "",
    videoDemo: "",
    playStore: "",
    liveDemo: "https://hoangvu-tech-blog.vercel.app/",
    background: Assets.hoangVuTechBlogBgPng,
  ),
  Project(
    title: "Weather forecast",
    description: StringText.pjWeatherDescription,
    sourceCode: "https://github.com/Hoangvu75/android_weather_forecast",
    videoDemo: "https://drive.google.com/file/d/1-7wVrpZ3W5J1n6Lf9GUFIFk2jDIPXCKN/view?usp=sharing",
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
