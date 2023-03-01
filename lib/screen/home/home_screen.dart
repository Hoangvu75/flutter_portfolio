import 'package:flutter/material.dart';
import 'package:portfolio/animation/my_animated_divider.dart';
import 'package:portfolio/animation/my_animated_slide_fade_from_left.dart';
import 'package:portfolio/generated/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screen/home/components/about_me.dart';
import 'package:timelines/timelines.dart';

import '../../animation/my_animated_slide_fade_from_right.dart';
import '../../generated/assets.dart';
import '../main/main_screen.dart';
import 'components/footer.dart';
import 'components/high_light_group.dart';
import 'components/home_banner.dart';
import 'components/my_career_path.dart';
import 'components/my_major.dart';
import 'components/my_projects.dart';
import 'components/my_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        const HomeBanner(),
        HighLightGroup(),
        const AboutMe(),
        const MyMajor(),
        MyCareerPath(),
        const MyProjects(),
        const MyService(),
        const Footer(),
      ],
    );
  }
}

