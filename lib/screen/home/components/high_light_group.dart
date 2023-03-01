import 'package:flutter/material.dart';
import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/constants.dart';
import 'package:portfolio/responsive.dart';

import 'animated_counter.dart';

class HighLightGroup extends StatelessWidget {
  HighLightGroup({
    Key? key,
  }) : super(key: key);

  final dynamic highlight_1 = {'numb': 12, 'text': "months of experience in software"};
  final dynamic highlight_2 = {'numb': 6, 'text': "months working as mobile developer"};
  final dynamic highlight_3 = {'numb': 10, 'text': "mobile Flutter/Android projects"};

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: defaultPadding,
        horizontal: defaultPadding,
      ),
      child: !Responsive.isDesktop(context)
          ? Column(
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: highlight_1['numb'],
                    text: "+",
                  ),
                  label: highlight_1['text'],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: highlight_2['numb'],
                    text: "+",
                  ),
                  label: highlight_2['text'],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: highlight_3['numb'],
                    text: "+",
                  ),
                  label: highlight_3['text'],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCounter(
                    value: highlight_1['numb'],
                    text: "+",
                  ),
                  label: highlight_1['text'],
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: highlight_2['numb'],
                    text: "+",
                  ),
                  label: highlight_2['text'],
                ),
                HighLight(
                  counter: AnimatedCounter(
                    value: highlight_3['numb'],
                    text: "+",
                  ),
                  label: highlight_3['text'],
                ),
              ],
            ),
    );
  }
}

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        Text(
          label!,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontFamily: Assets.fontsSVNGilroySemiBold,
          ),
        )
      ],
    );
  }
}
