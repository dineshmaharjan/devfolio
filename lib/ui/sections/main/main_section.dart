import 'package:devfolio/controller/main_controller.dart';
import 'package:devfolio/core/utils/screen_utils.dart';
import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
import 'package:devfolio/ui/sections/about/about_section.dart';
import 'package:devfolio/ui/sections/footer/footer.dart';
import 'package:devfolio/ui/sections/getInTouch/get_in_touch_section.dart';
import 'package:devfolio/ui/sections/home/home_section.dart';
import 'package:devfolio/ui/sections/services/service_section.dart';
import 'package:devfolio/ui/sections/technology/technology_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:particles_flutter/particles_flutter.dart';

class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  // final ScrollController _scrollController = ScrollController();
  MainController mainController = MainController();

  var widgets = [
    const HomeSection(),
    const AboutSection(),
    const ServiceSection(),
    const TechnologySection(),
    const GetInTouchSection(),
    const FooterWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ScreenUtils.isWebOrDesktop(context)
          ? const EdgeInsets.all(24)
          : const EdgeInsets.only(left: 16, right: 16, bottom: 24),
      child: Stack(
        children: [
          CircularParticle(
            key: UniqueKey(),
            awayRadius: 2,
            numberOfParticles: 80,
            speedOfParticles: 1,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            onTapAnimation: true,
            particleColor: Colors.white,
            awayAnimationDuration: const Duration(milliseconds: 600),
            maxParticleSize: 2,
            isRandSize: true,
            isRandomColor: false,
            awayAnimationCurve: Curves.easeInOut,
            enableHover: true,
            connectDots: false,
          ),
          NotificationListener<ScrollEndNotification>(
            onNotification: (scrollEnd) {
              final metrics = scrollEnd.metrics;
              if (metrics.atEdge) {
                bool isTop = metrics.pixels == 0;
                if (isTop) {
                  mainController.atBottom = false;
                } else {
                  mainController.atBottom = true;
                }
              }
              return true;
            },
            child: ListView.builder(
              controller: mainController.scrollController,
              itemCount: widgets.length,
              itemBuilder: (context, index) {
                return widgets[index];
              },
            ),
          ),
          Observer(
            builder: (_) => Visibility(
              visible: mainController.atBottom,
              child: Positioned(
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: () {
                    mainController.scrollAnimated(0);
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(48)),
                  child: AnimatedContainer(
                    height: 48,
                    width: 48,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.amberAccent),
                    duration: const Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    child: const Icon(Icons.arrow_upward_outlined),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // void scrollAnimated(double position) {
  //   _scrollController.animateTo(position,
  //       duration: const Duration(seconds: 1), curve: Curves.ease);
  // }
}
