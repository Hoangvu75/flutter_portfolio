import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart' as parser;
import 'package:http/http.dart' as http;

import '../../../generated/assets.dart';
import '../../../generated/constants.dart';
import 'animated_progress_indicator.dart';

class MostUsedProgrammingLanguage extends StatefulWidget {
  const MostUsedProgrammingLanguage({
    Key? key,
  }) : super(key: key);

  @override
  State<MostUsedProgrammingLanguage> createState() => _MostUsedProgrammingLanguageState();
}

class _MostUsedProgrammingLanguageState extends State<MostUsedProgrammingLanguage> {
  List<String> languageList = ["Dart", "Java", "Kotlin", "TypeScript", "Python"];
  List<double> languagePercent = [45.76, 23.37, 23, 4.09, 3.78];
  List<String> languageLogo = [
    Assets.dartLogoPng,
    Assets.javaLogoPng,
    Assets.kotlinLogoPng,
    Assets.tsLogoPng,
    Assets.pythonLogoPng,
  ];

  @override
  void initState() {
    super.initState();
    // getLanguagePercentages(languageList, languagePercent);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
          ),
          child: Text(
            "Most used programming languages",
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  fontFamily: Assets.fontsSVNGilroySemiBold,
                ),
          ),
        ),
        SizedBox(
          child: ListView.builder(
            itemCount: languageList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return AnimatedLinearProgressIndicator(
                percentage: languagePercent[index],
                label: languageList[index],
                assetLogo: languageLogo[index],
              );
            },
          ),
        ),
        Text(
          "Stat of used language rate from github",
          style: Theme.of(context).textTheme.bodyText2!.copyWith(
            fontFamily: Assets.fontsSVNGilroyRegular,
            fontStyle: FontStyle.italic,
            color: bodyTextColor,
            height: 1.5,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Future<void> getLanguagePercentages(List<String> languageList, List<double> languagePercent) async {
    final dio = Dio();

    final response = await dio.get('http://github-readme-stats.vercel.app/api/top-langs/?username=hoangvu75&hide=javascript');
    final document = parser.parse(response.data);
    final languages = document.querySelectorAll('.lang-name');

    print(response.toString());

    for (int i = 0; i < languages.length; i++) {
      if (i % 2 == 0) {
        setState(() {
          languageList.add(languages[i].text);
        });
      } else {
        setState(() {
          languagePercent.add(
            double.parse(
              (languages[i].text.replaceAll("%", "").replaceAll(".", "").length == 4)
                  ? "0.${languages[i].text.replaceAll("%", "").replaceAll(".", "")}"
                  : "0.0${languages[i].text.replaceAll("%", "").replaceAll(".", "")}",
            ),
          );
        });
      }
    }
  }
}
