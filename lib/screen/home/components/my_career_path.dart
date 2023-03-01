import 'package:flutter/material.dart';
import 'package:portfolio/animation/my_animated_divider.dart';
import 'package:portfolio/animation/my_animated_slide_fade_from_left.dart';
import 'package:portfolio/generated/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:timelines/timelines.dart';

import '../../../animation/my_animated_slide_fade_from_right.dart';
import '../../../generated/assets.dart';
import '../../../models/TimeEvent.dart';

class MyCareerPath extends StatelessWidget {
  MyCareerPath({super.key});

  final List<TimeEvent> timeEventList = [
    TimeEvent("", ""),
    TimeEvent(
        "Commenced the study of software engineering at the University of Information Technology - Hochiminh "
            "city National University.",
        "Aug - 2021"),
    TimeEvent(
        "Employed as a developer for Android applications at FPT Telecom International company and actively "
            "involved in developing as well as maintaining native mobile apps.",
        "Aug - 2022"),
    TimeEvent(
        "Specialized in Flutter technology while working on mobile development at FPT Telecom, responsible for "
            "developing and maintaining cross-platform mobile applications.",
        "Nov - 2022"),
    TimeEvent(
        "Serving as an IT teacher at Mindx Technology School, providing guidance and support to students "
            "in their technological education journey.",
        "Mar - 2023"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding * 6,
        ),
        Text(
          "My career path",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: primaryColor,
                fontFamily: Assets.fontsSVNGilroySemiBold,
              ),
        ),
        const MyAnimatedDivider(animatedKey: "my-education-divider", repeat: false),
        const SizedBox(
          height: defaultPadding,
        ),
        CareerTimeLine(timeEventList: timeEventList),
      ],
    );
  }
}

class CareerTimeLine extends StatelessWidget {
  const CareerTimeLine({
    super.key,
    required this.timeEventList,
  });

  final List<TimeEvent> timeEventList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        (Responsive.isDesktop(context))
            ? Flexible(
                flex: 1,
                child: Container(),
              )
            : Container(),
        Flexible(
          flex: 5,
          child: FixedTimeline.tileBuilder(
            theme: TimelineThemeData(
              color: Colors.white,
              indicatorTheme: const IndicatorThemeData(
                position: 0,
              ),
            ),
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.alternating,
              oppositeContentsBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(
                    defaultPadding / 2,
                    0,
                    defaultPadding / 2,
                    50,
                  ),
                  child: (index % 2 == 0)
                      ? MyAnimatedSlideFadeFromLeftWidget(
                          animatedKey: 'time-event-$index',
                          repeat: false,
                          child: TimelineEventItem(
                            timeEventList: timeEventList,
                            index: index,
                          ),
                        )
                      : MyAnimatedSlideFadeFromRightWidget(
                          animatedKey: 'time-event-$index',
                          repeat: false,
                          child: TimelineEventItem(
                            timeEventList: timeEventList,
                            index: index,
                          ),
                        ),
                );
              },
              connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) {
                return (index == 0) ? IndicatorStyle.transparent : IndicatorStyle.dot;
              },
              itemCount: timeEventList.length,
            ),
          ),
        ),
        (Responsive.isDesktop(context))
            ? Flexible(
                flex: 1,
                child: Container(),
              )
            : Container(),
      ],
    );
  }
}

class TimelineEventItem extends StatelessWidget {
  const TimelineEventItem({
    super.key,
    required this.timeEventList,
    required this.index,
  });

  final List<TimeEvent> timeEventList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: (index % 2 == 0) ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Text(
          timeEventList[index].time,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: primaryColor,
                fontFamily: Assets.fontsSVNGilroySemiBold,
              ),
        ),
        Text(
          timeEventList[index].event,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontFamily: Assets.fontsSVNGilroyRegular,
                height: 1.5,
              ),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
