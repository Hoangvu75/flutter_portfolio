import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/string_text.dart';
import 'package:portfolio/responsive.dart';

import '../../../animation/my_animated_divider.dart';
import '../../../generated/constants.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding * 2,
        ),
        Text(
          "About me",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: primaryColor,
                fontFamily: Assets.fontsSVNGilroySemiBold,
              ),
        ),
        const MyAnimatedDivider(animatedKey: "about-me-divider", repeat: false),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Responsive.isDesktop(context)
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Flexible(
                    flex: 8,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          StringText.aboutMe,
                          textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: Colors.white,
                                height: 1.5,
                                fontFamily: Assets.fontsSVNGilroyRegular,
                              ),
                          speed: const Duration(milliseconds: 25),
                          textAlign: TextAlign.center,
                        ),
                      ],
                      totalRepeatCount: 1,
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(Assets.vhh2Jpg),
                      ),
                    ),
                  ),
                ],
              )
            : AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText(
                    StringText.aboutMe,
                    textStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                          height: 1.5,
                          fontFamily: Assets.fontsSVNGilroyRegular,
                        ),
                    speed: const Duration(milliseconds: 25),
                  ),
                ],
                totalRepeatCount: 1,
              ),
      ],
    );
  }
}
