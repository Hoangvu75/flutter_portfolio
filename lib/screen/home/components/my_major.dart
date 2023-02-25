import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:portfolio/animation/my_animated_opacity_widget.dart';
import 'package:portfolio/animation/my_animated_scale_widget.dart';
import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/constants.dart';
import 'package:portfolio/responsive.dart';

import '../../../animation/my_animated_divider.dart';
import '../../../models/Major.dart';

class MyMajor extends StatelessWidget {
  const MyMajor({
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
          "My major",
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: primaryColor,
                fontFamily: Assets.fontsSVNGilroySemiBold,
              ),
        ),
        const MyAnimatedDivider(animatedKey: "my-major-divider", repeat: false),
        const SizedBox(
          height: defaultPadding,
        ),
        const MajorList(),
      ],
    );
  }
}

class MajorList extends StatelessWidget {
  const MajorList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          flex: 1,
          child: MyAnimatedScaleWidget(
            animatedKey: 'major-card-0',
            repeat: false,
            child: MajorCard(major: major[0]),
          ),
        ),
        const SizedBox(
          width: defaultPadding,
        ),
        Flexible(
          flex: 1,
          child: MyAnimatedScaleWidget(
            animatedKey: 'major-card-1',
            repeat: false,
            child: MajorCard(major: major[1]),
          ),
        ),
      ],
    );
  }
}

class MajorCard extends StatefulWidget {
  const MajorCard({
    Key? key,
    required this.major,
  }) : super(key: key);

  final Major major;

  @override
  State<MajorCard> createState() => _MajorCardState();
}

class _MajorCardState extends State<MajorCard> {
  bool _descriptionVisible = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          color: secondaryColor,
          image: DecorationImage(
            image: AssetImage(widget.major.imagePath!),
            fit: BoxFit.cover,
            opacity: 0.05,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.major.name!,
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontFamily: Assets.fontsSVNGilroySemiBold,
                  ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Text(
              widget.major.text!,
              style: const TextStyle(
                color: Colors.white,
                height: 1.5,
                fontFamily: Assets.fontsSVNGilroyRegular,
              ),
              textAlign: TextAlign.justify,
            ),
            Visibility(
              visible: Responsive.isDesktop(context) ? true : false,
              child: Column(
                children: [
                  const SizedBox(
                    height: defaultPadding,
                  ),
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Center(
                      child: ScaleTap(
                        onPressed: () {
                          setState(() {
                            _descriptionVisible = true;
                          });
                        },
                        child: Text(
                          "Why ${widget.major.tech}?",
                          style: Theme.of(context).textTheme.subtitle2!.copyWith(
                                fontFamily: Assets.fontsSVNGilroySemiBold,
                                color: primaryColor,
                              ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Visibility(
              visible: _descriptionVisible,
              child: MyAnimatedOpacityWidget(
                animatedKey: '${widget.major.tech}',
                repeat: false,
                child: Column(
                  children: [
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text(
                      widget.major.description!,
                      style: const TextStyle(
                        color: Colors.white,
                        height: 1.5,
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
      ),
    );
  }
}
