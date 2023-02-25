import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../generated/constants.dart';

class MyAnimatedScaleWidget extends StatefulWidget {
  const MyAnimatedScaleWidget({
    Key? key, required this.animatedKey, required this.child, required this.repeat
  }) : super(key: key);

  final String animatedKey;
  final Widget child;
  final bool repeat;

  @override
  State<MyAnimatedScaleWidget> createState() => _MyAnimatedScaleWidgetState();
}

class _MyAnimatedScaleWidgetState extends State<MyAnimatedScaleWidget> {
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
      child: AnimatedScale(
        scale: _isVisible ? 1 : 0,
        duration: defaultDuration_05,
        child: widget.child,
      ),
    );
  }
}
