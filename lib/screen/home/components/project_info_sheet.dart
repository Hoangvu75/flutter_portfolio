import 'dart:js' as js;

import 'package:flutter/material.dart';
import 'package:flutter_scale_tap/flutter_scale_tap.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../../generated/constants.dart';
import '../../../models/Project.dart';
import '../../../responsive.dart';

class ProjectInfoSheet extends StatelessWidget {
  const ProjectInfoSheet({super.key, required this.project});

  final Project project;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                defaultPadding * 2,
                defaultPadding,
                defaultPadding * 2,
                defaultPadding,
              ),
              width: Responsive.isDesktop(context)
                  ? MediaQuery.of(context).size.width * 1 / 3
                  : MediaQuery.of(context).size.width * 5 / 6,
              height: MediaQuery.of(context).size.height * 5 / 6,
              decoration: BoxDecoration(
                color: secondaryColor,
                image: DecorationImage(
                  image: AssetImage(project.background!),
                  fit: BoxFit.cover,
                  opacity: 0.1,
                ),
              ),
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        Text(
                          project.title!,
                          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontFamily: Assets.fontsSVNGilroyBold,
                              ),
                        ),
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        Text(
                          project.description!,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            height: 1.5,
                            color: Colors.white,
                            fontFamily: Assets.fontsSVNGilroyRegular,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        Text(
                          "Technical stack",
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Colors.white,
                            fontFamily: Assets.fontsSVNGilroyBold,
                          ),
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: project.techStack.length,
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            childAspectRatio: 1,
                            crossAxisSpacing: defaultPadding * 1.3,
                            mainAxisSpacing: defaultPadding * 1.3,
                          ),
                          itemBuilder: (context, index) => ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Container(
                                color: Colors.white,
                                padding: const EdgeInsets.all(5),
                                child: SvgPicture.network(
                                  project.techStack[index],
                                  fit: BoxFit.cover,
                                ),
                              )
                          ),
                        ),
                        const SizedBox(
                          height: defaultPadding * 2,
                        ),
                        if (project.sourceCode != "")
                          Column(
                            children: [
                              const SizedBox(
                                height: defaultPadding,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  js.context.callMethod('open', [project.sourceCode]);
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding * 2, vertical: defaultPadding),
                                  backgroundColor: primaryColor,
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Source code",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: Assets.fontsSVNGilroySemiBold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: defaultPadding / 4,
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        if (project.videoDemo != "")
                          Column(
                            children: [
                              const SizedBox(
                                height: defaultPadding,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  js.context.callMethod('open', [project.videoDemo]);
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding * 2, vertical: defaultPadding),
                                  backgroundColor: primaryColor,
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Video demo",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: Assets.fontsSVNGilroySemiBold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: defaultPadding / 4,
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        if (project.playStore != "")
                          Column(
                            children: [
                              const SizedBox(
                                height: defaultPadding,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  js.context.callMethod('open', [project.playStore]);
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding * 2, vertical: defaultPadding),
                                  backgroundColor: primaryColor,
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Play store",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: Assets.fontsSVNGilroySemiBold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: defaultPadding / 4,
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        if (project.liveDemo != "")
                          Column(
                            children: [
                              const SizedBox(
                                height: defaultPadding,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  js.context.callMethod('open', [project.liveDemo]);
                                },
                                style: TextButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: defaultPadding * 2, vertical: defaultPadding),
                                  backgroundColor: primaryColor,
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Live demo",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: Assets.fontsSVNGilroySemiBold,
                                      ),
                                    ),
                                    SizedBox(
                                      width: defaultPadding / 4,
                                    ),
                                    Icon(
                                      Icons.arrow_circle_right_outlined,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                  const CloseProjectButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CloseProjectButton extends StatelessWidget {
  const CloseProjectButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: defaultPadding,
      right: 0,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: ScaleTap(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Container(
            padding: const EdgeInsets.all(defaultPadding / 4),
            decoration: BoxDecoration(color: secondaryColor, borderRadius: BorderRadius.circular(100)),
            child: const Icon(
              Icons.close,
              size: 35,
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
