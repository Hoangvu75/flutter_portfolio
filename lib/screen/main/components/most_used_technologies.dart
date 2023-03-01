import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import '../../../generated/constants.dart';
import 'animated_progress_indicator.dart';

class MostUsedTechnologies extends StatelessWidget {
  const MostUsedTechnologies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Most used technologies",
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontFamily: Assets.fontsSVNGilroySemiBold,
            ),
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.45,
                label: "Flutter",
                assetImage: Assets.flutterLabelJpg,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.3,
                label: "Android",
                assetImage: Assets.androidLabelJpg,
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                percentage: 0.25,
                label: "Node.js",
                assetImage: Assets.nodejsLabelPng,
              ),
            ),
          ],
        ),
      ],
    );
  }
}