import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../generated/constants.dart';

class MyAnimatedDivider extends StatefulWidget {
  const MyAnimatedDivider({Key? key, required this.animatedKey, required this.repeat}) : super(key: key);

  final String animatedKey;
  final bool repeat;

  @override
  State<MyAnimatedDivider> createState() => _MyAnimatedDividerState();
}

class _MyAnimatedDividerState extends State<MyAnimatedDivider> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.animatedKey),
      onVisibilityChanged: (VisibilityInfo info) {
        var visiblePercentage = info.visibleFraction * 100;
        if (widget.repeat) {
          if (visiblePercentage > 99) {
            setState(() {
              _isVisible = true;
            });
          } else {
            setState(() {
              _isVisible = false;
            });
          }
        } else {
          if (visiblePercentage > 40) {
            setState(() {
              _isVisible = true;
            });
          }
        }
      },
      child: Container(
        height: 2,
        width: 400,
        color: primaryColor,
        margin: const EdgeInsets.fromLTRB(
          0,
          defaultPadding / 2,
          0,
          defaultPadding / 2,
        ),
      ).animate(target: _isVisible ? 1 : 0).scale(duration: defaultDuration_1, alignment: Alignment.centerLeft),
    );
  }
}
