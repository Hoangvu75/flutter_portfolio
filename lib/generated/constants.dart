import 'dart:ui';

import 'package:animated_background/particles.dart';

const primaryColor = Color(0xFFFF0766);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF1E1E28);

const defaultPadding = 20.0;
const defaultDuration_6 = Duration(seconds: 6);
const defaultDuration_4 = Duration(seconds: 4);
const defaultDuration_2 = Duration(seconds: 2);
const defaultDuration_1 = Duration(seconds: 1);
const defaultDuration_05 = Duration(milliseconds: 500);
const maxWidth = 1440.0;

ParticleOptions particles = const ParticleOptions(
  baseColor: primaryColor,
  spawnOpacity: 0.0,
  opacityChangeRate: 0.25,
  minOpacity: 0.1,
  maxOpacity: 0.4,
  particleCount: 10,
  spawnMaxRadius: 100.0,
  spawnMaxSpeed: 100.0,
  spawnMinSpeed: 30,
  spawnMinRadius: 20.0,
);