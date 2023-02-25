import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/generated/constants.dart';
import 'package:portfolio/responsive.dart';
import 'package:smooth_scroll_web/smooth_scroll_web.dart';

import '../../animation/main_slide.dart';
import 'components/side_menu.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                  ),
                ),
              ),
            ),
      drawer: const SideMenu(),
      body: AnimatedBackground(
        vsync: this,
        behaviour: RandomParticleBehaviour(options: particles),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: maxWidth),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  const Expanded(
                    flex: 2,
                    child: SideMenu(),
                  ),
                const SizedBox(
                  width: defaultPadding / 2,
                ),
                Expanded(
                  flex: 7,
                  child: MainSlide(
                    animatedKey: 'main-right',
                    child: Responsive.isDesktop(context)
                        ? SmoothScrollWeb(
                            controller: _scrollController,
                            scrollSpeed: 200,
                            scrollAnimationLength: 1000,
                            curve: Curves.ease,
                            child: SingleChildScrollView(
                              physics: const NeverScrollableScrollPhysics(),
                              controller: _scrollController,
                              child: Column(
                                children: [...widget.children],
                              ),
                            ),
                          )
                        : SingleChildScrollView(
                            child: Column(
                              children: [...widget.children],
                            ),
                          ),
                  ),
                ),
                (Responsive.isMobile(context) || Responsive.isMobileLarge(context) || Responsive.isTablet(context))
                    ? const SizedBox(
                        width: defaultPadding / 2,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
