import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/animation/on_hover_state.dart';
import 'package:portfolio/generated/assets.dart';

import '../../../generated/constants.dart';

class ViewCVButton extends StatelessWidget {
  const ViewCVButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHover(
      matrixTransform: Matrix4.identity()..translate(0, 0, 0),
      builder: (bool isHovered) {
        return TextButton(
          onPressed: () {
            js.context.callMethod('open', ["https://drive.google.com/file/d/1ajwtYxPPZew4y_-XMCOVz6aGfMGjyq1R/view?usp=sharing"]);
          },
          child: FittedBox(
            child: Row(
              children: [
                Text(
                  "See my CV",
                  style: TextStyle(
                    color: isHovered ? primaryColor : Theme.of(context).textTheme.bodyLarge!.color,
                    fontFamily: Assets.fontsSVNGilroyBold,
                  ),
                ),
                const SizedBox(
                  width: defaultPadding / 2,
                ),
                SvgPicture.asset(Assets.icDownloadSvg),
              ],
            ),
          ),
        );
      },
    );
  }
}
