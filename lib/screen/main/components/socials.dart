import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/animation/on_hover_state.dart';
import 'package:portfolio/generated/assets.dart';

import '../../../generated/constants.dart';

class Socials extends StatelessWidget {
  const Socials({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      color: secondaryColor,
      child: Row(
        children: [
          const Spacer(),
          OnHover(
            matrixTransform: Matrix4.identity()..translate(0, 0, 0),
            builder: (bool isHovered) {
              return IconButton(
                onPressed: () {
                  js.context.callMethod('open', ['https://www.linkedin.com/in/huy-hoang-vu-961a83253/']);
                },
                icon: SvgPicture.asset(
                  Assets.icLinkedInSvg,
                  width: 19,
                  height: 19,
                  color: isHovered ? primaryColor : null,
                ),
              );
            },
          ),
          OnHover(
            matrixTransform: Matrix4.identity()..translate(0, 0, 0),
            builder: (bool isHovered) {
              return IconButton(
                onPressed: () {
                  js.context.callMethod('open', ['https://github.com/Hoangvu75']);
                },
                icon: SvgPicture.asset(
                  Assets.icGithubSvg,
                  width: 19,
                  height: 19,
                  color: isHovered ? primaryColor : null,
                ),
              );
            },
          ),
          OnHover(
            matrixTransform: Matrix4.identity()..translate(0, 0, 0),
            builder: (bool isHovered) {
              return IconButton(
                onPressed: () {
                  js.context.callMethod('open', ['https://www.facebook.com/Lories.seraph/']);
                },
                icon: SvgPicture.asset(
                  Assets.icFacebookSvg,
                  width: 19,
                  height: 19,
                  color: isHovered ? primaryColor : null,
                ),
              );
            },
          ),
          const Spacer()
        ],
      ),
    );
  }
}
