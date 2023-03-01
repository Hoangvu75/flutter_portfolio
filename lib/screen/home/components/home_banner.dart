import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/constants.dart';
import 'package:portfolio/responsive.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0.0, end: 1.0),
              curve: Curves.bounceIn,
              duration: defaultDuration_4,
              builder: (BuildContext context, double value, Widget? child) {
                return Opacity(
                  opacity: value,
                  child: Image.asset(
                    Assets.vhhJpg,
                    fit: BoxFit.cover,
                  ),
                );
              }),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  darkColor.withOpacity(0.5),
                  darkColor.withOpacity(1),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Welcome to my workspace. I'm Hoang Vu!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.displaySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: Assets.fontsSVNGilroyBold,
                          )
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: Assets.fontsSVNGilroyBold,
                          ),
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                const MyBuildAnimatedText(),
                const SizedBox(
                  height: defaultPadding,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontFamily: Assets.fontsSVNGilroyRegular,
          ),
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context))
            const FlutterCodedText(
              type: 1,
            ),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          const Text(
            "I provide: ",
          ),
          Responsive.isMobile(context) ? const Expanded(child: AnimatedText()) : const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(
              width: defaultPadding / 2,
            ),
          if (!Responsive.isMobileLarge(context))
            const FlutterCodedText(
              type: 2,
            ),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      totalRepeatCount: 230507,
      animatedTexts: [
        TyperAnimatedText(
          "Responsive web and mobile app",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Flutter and Android developments",
          speed: const Duration(milliseconds: 60),
        ),
        TyperAnimatedText(
          "Mobile and Backend developments",
          speed: const Duration(milliseconds: 60),
        )
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
    required this.type,
  }) : super(key: key);

  final int type;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: type == 1 ? "<" : "</",
        style: const TextStyle(
          color: primaryColor,
          fontFamily: Assets.fontsSVNGilroyBold,
          fontStyle: FontStyle.italic,
        ),
        children: const [
          TextSpan(
            text: "Hoangvu0357",
          ),
          TextSpan(
            text: ">",
          ),
        ],
      ),
    );
  }
}
