import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:portfolio/responsive.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../generated/constants.dart';
import '../models/Project.dart';
import '../screen/home/components/my_projects.dart';

class MyAnimatedProjectGridView extends StatefulWidget {
  const MyAnimatedProjectGridView(
      {Key? key,
      required this.animatedKey,
      required this.repeat,
      required this.crossAxisCount,
      required this.childAspectRatio})
      : super(key: key);

  final String animatedKey;
  final bool repeat;
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  State<MyAnimatedProjectGridView> createState() => _MyAnimatedProjectGridViewState();
}

class _MyAnimatedProjectGridViewState extends State<MyAnimatedProjectGridView> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.animatedKey),
      onVisibilityChanged: (VisibilityInfo info) {
        var visiblePercentage = info.visibleFraction * 100;
        if (widget.repeat) {
          if (visiblePercentage > 10) {
            setState(() {
              _isVisible = true;
            });
          } else {
            setState(() {
              _isVisible = false;
            });
          }
        } else {
          if (visiblePercentage > 10) {
            setState(() {
              _isVisible = true;
            });
          }
        }
      },
      child: _isVisible ? AnimationLimiter(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: demoProjects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.crossAxisCount,
            childAspectRatio: widget.childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => AnimationConfiguration.staggeredGrid(
            delay: defaultDuration_1,
            duration: defaultDuration_2,
            position: index,
            columnCount: widget.crossAxisCount,
            child: ScaleAnimation(
              delay: defaultDuration_1,
              duration: defaultDuration_2,
              child: FadeInAnimation(
                child: ProjectCard(
                  project: demoProjects[index],
                ),
              ),
            ),
          ),
        ),
      ) : Opacity(
        opacity: 0,
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: demoProjects.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: widget.crossAxisCount,
            childAspectRatio: widget.childAspectRatio,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => ProjectCard(
            project: demoProjects[index],
          ),
        ),
      ),
    );
  }
}
