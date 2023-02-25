import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../generated/constants.dart';

class MyAnimatedSlideFromRightWidget extends StatefulWidget {
  const MyAnimatedSlideFromRightWidget({
    Key? key, required this.animatedKey, required this.child, required this.repeat
  }) : super(key: key);

  final String animatedKey;
  final Widget child;
  final bool repeat;

  @override
  State<MyAnimatedSlideFromRightWidget> createState() => _MyAnimatedSlideFromRightWidgetState();
}

class _MyAnimatedSlideFromRightWidgetState extends State<MyAnimatedSlideFromRightWidget> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.animatedKey),
      onVisibilityChanged: (VisibilityInfo info) {
        var visiblePercentage = info.visibleFraction * 100;
        if (widget.repeat) {
          if (visiblePercentage > 40) {
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
      child: AnimatedSlide(
        offset: _isVisible ? const Offset(0, 0) : const Offset(1, 0),
        duration: defaultDuration_2,
        child: widget.child,
      ),
    );
  }
}
