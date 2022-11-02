import 'package:devfolio/core/utils/screen_utils.dart';
import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
import 'package:devfolio/ui/sections/about/about_section.dart';
import 'package:devfolio/ui/sections/footer/footer.dart';
import 'package:devfolio/ui/sections/getInTouch/get_in_touch_section.dart';
import 'package:devfolio/ui/sections/home/home_section.dart';
import 'package:devfolio/ui/sections/services/service_section.dart';
import 'package:devfolio/ui/sections/technology/technology_section.dart';
import 'package:flutter/material.dart';
import 'package:particles_flutter/particles_flutter.dart';

class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  Widget build(BuildContext context) {
    return Stack(
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
        SingleChildScrollView(
          child: Padding(
            padding: ScreenUtils.isWebOrDesktop(context)
                ? const EdgeInsets.all(24)
                : const EdgeInsets.only(left: 16, right: 16, bottom: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                HomeSection(),
                SizedBox(
                  height: 24,
                ),
                AboutSection(),
                SizedBox(
                  height: 64,
                ),
                ServiceSection(),
                SizedBox(
                  height: 64,
                ),
                TechnologySection(),
                SizedBox(
                  height: 64,
                ),
                GetInTouchSection(),
                SizedBox(
                  height: 64,
                ),
                FooterWidget(),
              ],
            ),
          ),
        )
      ],
    );
  }

}
