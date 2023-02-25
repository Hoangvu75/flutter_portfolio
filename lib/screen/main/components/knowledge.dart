import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/animation/my_animated_slide_from_left_widget.dart';
import 'package:portfolio/animation/my_animated_slide_from_right_widget.dart';
import 'package:portfolio/generated/assets.dart';

import '../../../generated/constants.dart';

class Knowledge extends StatelessWidget {
  Knowledge({
    Key? key,
  }) : super(key: key);

  List<Widget> knowledgeList = [
    const KnowledgeText(
      text: "Java, Kotlin, Javascript, Dart",
    ),
    const KnowledgeText(
      text: "Android pattern: MVC, MVVM",
    ),
    const KnowledgeText(
      text: "Flutter state: BloC, GetX, Provider",
    ),
    const KnowledgeText(
      text: "Node.js pattern: MVC",
    ),
    const KnowledgeText(
      text: "Git, Fork, Docker, Postman",
    ),
    const KnowledgeText(
      text: "MongoDB, Firebase",
    ),
    const KnowledgeText(
      text: "Restful API, Socket",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding,
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontFamily: Assets.fontsSVNGilroySemiBold,
                ),
          ),
        ),
        SizedBox(
          child: ListView.builder(
            itemCount: knowledgeList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return (index % 2 == 0) ? MyAnimatedSlideFromLeftWidget(
                animatedKey: 'knowledge-list-$index',
                repeat: false,
                child: knowledgeList[index],
              ) : MyAnimatedSlideFromRightWidget(
                animatedKey: 'knowledge-list-$index',
                repeat: false,
                child: knowledgeList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: defaultPadding / 2,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            Assets.icCheckSvg,
            color: primaryColor,
          ),
          const SizedBox(
            width: defaultPadding / 2,
          ),
          Text(
            text,
            style: const TextStyle(
              fontFamily: Assets.fontsSVNGilroyRegular,
            ),
          ),
        ],
      ),
    );
  }
}
