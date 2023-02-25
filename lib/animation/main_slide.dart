import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../generated/constants.dart';

class MainSlide extends StatefulWidget {
  const MainSlide({
    Key? key, required this.animatedKey, required this.child
  }) : super(key: key);

  final String animatedKey;
  final Widget child;

  @override
  State<MainSlide> createState() => _MainSlideState();
}

class _MainSlideState extends State<MainSlide> {
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return VisibilityDetector(
      key: Key(widget.animatedKey),
      onVisibilityChanged: (VisibilityInfo info) {
        setState(() {
          _isVisible = true;
        });
      },
      child: AnimatedSlide(
        offset: _isVisible ? const Offset(0, 0) : const Offset(1.5, 0),
        duration: defaultDuration_2,
        child: widget.child,
      ),
    );
  }
}
