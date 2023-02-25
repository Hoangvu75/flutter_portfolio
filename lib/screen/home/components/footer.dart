import 'package:flutter/material.dart';
import 'package:portfolio/animation/my_animated_slide_from_bottom_widget.dart';

import '../../../generated/assets.dart';
import '../../../generated/constants.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: defaultPadding * 4,
        ),
        MyAnimatedSlideFromBottomWidget(
          animatedKey: 'footer',
          repeat: false,
          child: Container(
            width: double.infinity,
            color: secondaryColor,
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Contact me via",
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontFamily: Assets.fontsSVNGilroySemiBold,
                      ),
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      size: 20,
                    ),
                    const SizedBox(
                      width: defaultPadding / 2,
                    ),
                    Text(
                      "(+84) 941290612",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            height: 1.5,
                            fontFamily: Assets.fontsSVNGilroyRegular,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.email_outlined,
                      size: 20,
                    ),
                    const SizedBox(
                      width: defaultPadding / 2,
                    ),
                    Text(
                      "vuhuyhoang230507@gmail.com",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            height: 1.5,
                            fontFamily: Assets.fontsSVNGilroyRegular,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding * 2,
                ),
                Center(
                  child: Text(
                    "This portfolio page created by Hoang Vu using Flutter Web framework.",
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          height: 1.5,
                          fontFamily: Assets.fontsSVNGilroyRegular,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
