import 'package:flutter/material.dart';
import 'package:portfolio/generated/assets.dart';

import '../../../generated/constants.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(Assets.vhhAvaJpg),
            ),
            const Spacer(),
            Text(
              "Vu Huy Hoang",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontFamily: Assets.fontsSVNGilroySemiBold,
                  ),
            ),
            const Text(
              "Software developer",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
                fontFamily: Assets.fontsSVNGilroyRegular,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
