import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class MyAnimatedSlideFadeFromRightWidget extends StatefulWidget {
  const MyAnimatedSlideFadeFromRightWidget({
    Key? key, required this.animatedKey, required this.child, required this.repeat
  }) : super(key: key);

  final String animatedKey;
  final Widget child;
  final bool repeat;

  @override
  State<MyAnimatedSlideFadeFromRightWidget> createState() => _MyAnimatedSlideFadeFromRightWidgetState();
}

class _MyAnimatedSlideFadeFromRightWidgetState extends State<MyAnimatedSlideFadeFromRightWidget> {
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
      child: AnimatedOpacity(
        opacity: _isVisible ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: AnimatedSlide(
          offset: _isVisible ? const Offset(0, 0) : const Offset(0.05, 0),
          duration: const Duration(milliseconds: 500),
          child: widget.child,
        ),
      ),
    );
  }
}
