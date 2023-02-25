import 'package:flutter/material.dart';
import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/constants.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.text,
  }) : super(key: key);

  final int value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(
        begin: 0,
        end: value,
      ),
      duration: defaultDuration_6,
      builder: (context, value, child) => Text(
        "$value$text",
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: primaryColor,
              fontFamily: Assets.fontsSVNGilroySemiBold,
            ),
      ),
    );
  }
}
