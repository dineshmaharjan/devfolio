import 'package:devfolio/controller/main_controller.dart';
import 'package:devfolio/core/provider/scroll_provider.dart';
import 'package:devfolio/core/utils/screen_utils.dart';
import 'package:devfolio/ui/sections/about/about_section.dart';
import 'package:devfolio/ui/sections/footer/footer.dart';
import 'package:devfolio/ui/sections/getInTouch/get_in_touch_section.dart';
import 'package:devfolio/ui/sections/home/home_section.dart';
import 'package:devfolio/ui/sections/projects/projects_section.dart';
import 'package:devfolio/ui/sections/services/service_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class MainSection extends StatefulWidget {
  const MainSection({Key? key}) : super(key: key);

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {

  var widgets = [
    const HomeSection(),
    const AboutSection(),
    const ServiceSection(),
    const ProjectsSection(),
    const GetInTouchSection(),
    const FooterWidget(),
  ];




  @override
  Widget build(BuildContext context) {
    var _mainController = context.watch<MainController>();

    final _scrollProvider = Provider.of<ScrollProvider>(context);

    return Padding(
      padding: ScreenUtils.isWebOrDesktop(context)
          ? const EdgeInsets.only(bottom: 8,left: 24, right:24)
          : const EdgeInsets.only(left: 16, right: 16, bottom: 0),
      child: Stack(
        children: [
          NotificationListener<ScrollEndNotification>(
            onNotification: (scrollEnd) {
              final metrics = scrollEnd.metrics;
              if (metrics.atEdge) {
                bool isTop = metrics.pixels == 0;
                if (isTop) {
                  _mainController.atBottom = false;
                } else {
                  _mainController.atBottom = true;
                }
              }
              return true;
            },
            child:  ScrollablePositionedList.builder(
                  itemScrollController: _scrollProvider.itemScrollController,
                  itemPositionsListener:_scrollProvider.itemPositionListener,
                  itemCount: widgets.length,
                  shrinkWrap: false,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return widgets[index];
                  },
                ),
          ),
          Observer(
            builder: (_) => Visibility(
              visible: _mainController.atBottom,
              child: Positioned(
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: () {
                  _scrollProvider.itemScrollController.scrollTo(
                                index: 0,
                                duration: const Duration(seconds: 2),
                                curve: Curves.easeInOutCubic);
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


}
