import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/lang_stat.dart';

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
  List<LangStat> languageStat = [];
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
    getLanguagePercentages(languageStat);
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
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontFamily: Assets.fontsSVNGilroySemiBold,
                ),
          ),
        ),
        SizedBox(
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: languageStat.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return AnimatedLinearProgressIndicator(
                percentage: languageStat[index].languageRate,
                label: languageStat[index].languageName,
                assetLogo: languageLogo[index],
              );
            },
          ),
        ),
        Text(
          "Stat of used language rate from github",
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
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

  Future<void> getLanguagePercentages(List<LangStat> languageStat) async {
    final dio = Dio();

    final response = await dio.get(
      'https://hv0357-portfolio-server.fly.dev/get-most-used-language',
      options: Options(
        headers: {
          'Access-Control-Allow-Origin': '*',
          'Access-Control-Allow-Method': 'POST, GET, OPTIONS, DELETE',
        },
      ),
    );

    for (int i = 0; i < response.data['langList'].length; i++) {
      setState(() {
        languageStat.add(
          LangStat(
            response.data['langList'][i]['langName'],
            double.parse((response.data['langList'][i]['langRate'].replaceAll("%", ""))) / 100,
          ),
        );
      });
    }
  }
}
