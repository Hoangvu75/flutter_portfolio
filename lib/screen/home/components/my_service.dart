import 'package:flutter/material.dart';
import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/string_text.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screen/home/components/serviceCarousel/service_carousel.dart';

import '../../../animation/my_animated_divider.dart';
import '../../../animation/my_animated_opacity_widget.dart';
import '../../../animation/my_animated_scale_widget.dart';
import '../../../animation/my_animated_slide_fade_from_left.dart';
import '../../../generated/constants.dart';

class MyService extends StatelessWidget {
  const MyService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding * 6,
        ),
        Text(
          "Which services I can provide?",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: primaryColor,
                fontFamily: Assets.fontsSVNGilroySemiBold,
              ),
        ),
        const MyAnimatedDivider(animatedKey: "my-services-divider", repeat: false),
        (Responsive.isMobile(context) || Responsive.isMobileLarge(context))
            ? const MobileViewMyService()
            : const WindowsViewMyService(),
      ],
    );
  }
}

class WindowsViewMyService extends StatelessWidget {
  const WindowsViewMyService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ServiceCarousel(),
      ],
    );
  }
}

class MobileViewMyService extends StatelessWidget {
  const MobileViewMyService({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            MyAnimatedOpacityWidget(
              animatedKey: "mobile_service_1",
              repeat: true,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    Assets.mobileDevJpg,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            MyAnimatedOpacityWidget(
              animatedKey: "mobile_service_2",
              repeat: true,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Mobile Development",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: primaryColor,
                            fontFamily: Assets.fontsSVNGilroyBold,
                          ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Text(
                      StringText.mobileService,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontFamily: Assets.fontsSVNGilroyRegular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            MyAnimatedScaleWidget(
              animatedKey: "mobile_service_3",
              repeat: true,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    Assets.webDevJpg,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            MyAnimatedScaleWidget(
              animatedKey: "mobile_service_4",
              repeat: true,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Web Development",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: primaryColor,
                            fontFamily: Assets.fontsSVNGilroyBold,
                          ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Text(
                      StringText.webService,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontFamily: Assets.fontsSVNGilroyRegular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            MyAnimatedSlideFadeFromLeftWidget(
              animatedKey: "mobile_service_5",
              repeat: true,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    Assets.backendDevPng,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            MyAnimatedSlideFadeFromLeftWidget(
              animatedKey: "mobile_service_6",
              repeat: true,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Backend Development",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: primaryColor,
                            fontFamily: Assets.fontsSVNGilroyBold,
                          ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Text(
                      StringText.backendService,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontFamily: Assets.fontsSVNGilroyRegular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
