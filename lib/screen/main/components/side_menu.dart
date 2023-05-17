import 'package:flutter/material.dart';
import 'package:portfolio/generated/constants.dart';
import 'package:portfolio/screen/main/components/most_used_technologies.dart';
import 'package:portfolio/screen/main/components/socials.dart';

import 'area_info_text.dart';
import 'most_used_programming_language.dart';
import 'view_cv_button.dart';
import 'knowledge.dart';
import 'my_info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    const AreaInfoText(
                      title: "Residence",
                      text: "Vietnam",
                    ),
                    const AreaInfoText(
                      title: "City",
                      text: "Hochiminh City",
                    ),
                    const AreaInfoText(
                      title: "Year of birth",
                      text: "2003",
                    ),
                    const MostUsedTechnologies(),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const MostUsedProgrammingLanguage(),
                    Knowledge(),
                    const Divider(),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    const ViewCVButton(),
                    const Socials(),
                    const SizedBox(
                      height: defaultPadding * 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




