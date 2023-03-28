import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/generated/assets.dart';
import 'package:portfolio/generated/constants.dart';

import '../../../../animation/my_animated_opacity_widget.dart';
import '../../../../animation/my_animated_scale_widget.dart';
import '../../../../animation/my_animated_slide_fade_from_left.dart';
import '../../../../generated/string_text.dart';
import 'bloc/indicator/indicator_bloc.dart';
import 'bloc/indicator/indicator_event.dart';
import 'bloc/indicator/indicator_state.dart';

class ServiceCarousel extends StatefulWidget {
  const ServiceCarousel({super.key});

  @override
  State<ServiceCarousel> createState() => _ServiceCarouselState();
}

class _ServiceCarouselState extends State<ServiceCarousel> {
  final PageController pageController = PageController(initialPage: 0, keepPage: true);
  int currentPage = 0;

  @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 10), (Timer timer) {
      if (currentPage < 2) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      pageController.animateToPage(
        currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> serviceWidgets = [
      MyAnimatedOpacityWidget(
        animatedKey: "windows_service_1",
        repeat: false,
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    Assets.mobileDevJpg,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Mobile Development",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: primaryColor,
                        fontFamily: Assets.fontsSVNGilroyBold,
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Text(
                      StringText.mobileService,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontFamily: Assets.fontsSVNGilroyRegular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      MyAnimatedScaleWidget(
        animatedKey: "windows_service_2",
        repeat: false,
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Web Development",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: primaryColor,
                        fontFamily: Assets.fontsSVNGilroyBold,
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Text(
                      StringText.webService,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontFamily: Assets.fontsSVNGilroyRegular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    Assets.webDevJpg,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      MyAnimatedSlideFadeFromLeftWidget(
        animatedKey: "windows_service_3",
        repeat: false,
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    Assets.backendDevPng,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: defaultPadding,
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Backend Development",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: primaryColor,
                        fontFamily: Assets.fontsSVNGilroyBold,
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Text(
                      StringText.backendService,
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.white,
                        fontFamily: Assets.fontsSVNGilroyRegular,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    ];

    return BlocProvider(
      create: (context) => IndicatorBloc(),
      child: BlocBuilder<IndicatorBloc, IndicatorState>(builder: (context, indicatorState) {
        return Column(
          children: [
            SizedBox(
              height: 350,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                itemCount: 3,
                onPageChanged: (int page) {
                  currentPage = page;
                  context.read<IndicatorBloc>().add(ChangeIndicatorPosition(position: currentPage));
                },
                itemBuilder: (BuildContext context, int index) {
                  return CarouselPage(
                    pageController: pageController,
                    widget: serviceWidgets[index],
                    index: index,
                  );
                },
              ),
            ),
            IndicatorList(
              pageController: pageController,
              indicatorState: indicatorState,
            ),
          ],
        );
      }),
    );
  }
}

class CarouselPage extends StatelessWidget {
  const CarouselPage({
    super.key,
    required this.widget,
    required this.index,
    required this.pageController,
  });

  final PageController pageController;
  final Widget widget;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        pageController.jumpTo(pageController.offset - details.delta.dx * 2);
      },
      child: widget,
    );
  }
}

class IndicatorList extends StatelessWidget {
  const IndicatorList({
    super.key,
    required this.indicatorState,
    required this.pageController,
  });

  final PageController pageController;
  final IndicatorState indicatorState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SingleIndicator(
          position: 0,
          indicatorState: indicatorState,
          pageController: pageController,
        ),
        SingleIndicator(
          position: 1,
          indicatorState: indicatorState,
          pageController: pageController,
        ),
        SingleIndicator(
          position: 2,
          indicatorState: indicatorState,
          pageController: pageController,
        )
      ],
    );
  }
}

class SingleIndicator extends StatelessWidget {
  const SingleIndicator({
    super.key,
    required this.position,
    required this.indicatorState,
    required this.pageController,
  });

  final int position;
  final IndicatorState indicatorState;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          pageController.animateToPage(
            position,
            duration: const Duration(milliseconds: 350),
            curve: Curves.easeIn,
          );
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          height:  indicatorState.position == position ? 15 : 10,
          width: indicatorState.position == position ? 50 : 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            boxShadow: [
              indicatorState.position == position
                  ? BoxShadow(
                color: primaryColor.withOpacity(0.72),
                blurRadius: 4.0,
                spreadRadius: 1.0,
                offset: const Offset(0, 0),
              )
                  : const BoxShadow(
                color: Colors.transparent,
              )
            ],
            color: indicatorState.position == position ? primaryColor : const Color(0XFFEAEAEA),
          ),
        ),
      ),
    );
  }
}