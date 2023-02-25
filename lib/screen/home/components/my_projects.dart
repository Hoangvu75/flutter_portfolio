import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/animation/my_animated_project_gridview.dart';
import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/constants.dart';
import 'package:portfolio/models/Project.dart';
import 'package:portfolio/responsive.dart';
import 'package:portfolio/screen/home/components/project_info_sheet.dart';

import '../../../animation/my_animated_divider.dart';
import '../../../animation/on_hover_state.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding * 6,
        ),
        Text(
          "My projects",
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: primaryColor,
                fontFamily: Assets.fontsSVNGilroySemiBold,
              ),
        ),
        const MyAnimatedDivider(animatedKey: "my-projects-divider", repeat: false),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
          mobile: ProjectsGridView(
            crossAxisCount: 1,
            childAspectRatio: 1.7,
          ),
          mobileLarge: ProjectsGridView(
            crossAxisCount: 2,
          ),
          tablet: ProjectsGridView(
            childAspectRatio: 1.1,
          ),
          desktop: ProjectsGridView(),
        ),
      ],
    );
  }
}

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return MyAnimatedProjectGridView(
      animatedKey: 'project-gridview',
      repeat: false,
      crossAxisCount: crossAxisCount,
      childAspectRatio: childAspectRatio,
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return OnHover(
      matrixTransform: Matrix4.identity()..translate(0, -10, 0),
      builder: (bool isHovered) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  image: DecorationImage(
                    image: AssetImage(project.background!),
                    fit: BoxFit.cover,
                    opacity: 0.1,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.title!,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontFamily: Assets.fontsSVNGilroySemiBold,
                          ),
                    ),
                    const Spacer(),
                    Text(
                      project.description!,
                      maxLines: Responsive.isMobileLarge(context) ? 3 : 5,
                      style: const TextStyle(
                        height: 1.5,
                        color: Colors.white70,
                        fontFamily: Assets.fontsSVNGilroyRegular,
                        overflow: TextOverflow.fade,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            showModal<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return ProjectInfoSheet(project: project);
                              },
                            );
                          },
                          child: Row(
                            children: const [
                              Text(
                                "More info",
                                style: TextStyle(color: primaryColor, fontFamily: Assets.fontsSVNGilroyBold),
                              ),
                              SizedBox(
                                width: defaultPadding / 4,
                              ),
                              Icon(
                                Icons.arrow_circle_right_outlined,
                                color: primaryColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
