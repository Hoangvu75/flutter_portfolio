import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../generated/constants.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
    required this.assetImage,
  }) : super(key: key);

  final double percentage;
  final String label;
  final String assetImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage(assetImage),
                fit: BoxFit.cover,
                opacity: 0.2,
              ),
            ),
            child: TweenAnimationBuilder(
              tween: Tween<double>(
                begin: 0,
                end: percentage,
              ),
              duration: defaultDuration_4,
              builder: (context, double value, child) => Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(
                    child: Text(
                      "${(value * 100).toInt()}%",
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(
          begin: 0,
          end: percentage,
        ),
        duration: defaultDuration_4,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(3),
                      child: SvgPicture.network(
                        "https://raw.githubusercontent.com/devicons/devicon/master/icons/${label.toLowerCase()}/${label.toLowerCase()}-original.svg",
                        width: 15,
                        height: 15,
                        fit: BoxFit.cover,
                      )
                    ),
                    const SizedBox(
                      width: defaultPadding / 2,
                    ),
                    Text(
                      label,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Text(
                  ("${(value * 100)}".length > 5)
                      ? "${double.parse((value * 100).toString().substring(0, 5))}%"
                      : "${double.parse((value * 100).toString())}%",
                )
              ],
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
