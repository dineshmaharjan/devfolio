import 'package:devfolio/core/provider/scroll_provider.dart';
import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    final _scrollProvider = Provider.of<ScrollProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [

          InkWell(
            onTap: (){
              _scrollProvider.itemScrollController.scrollTo(
                                index: 0,
                                duration: const Duration(seconds: 2),
                                curve: Curves.easeInOutCubic);
            },
            child: Image.asset(
              'assets/images/logo.png',
              width: 48,
              height: 48,
            ),
          ),
          const Spacer(),
          Expanded(
            child: Builder(
              builder: (context) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    
                    MouseHoverRegionBuilder(
                      builder: (isHovered) {
                        return InkWell(
                          onTap: () => _scrollProvider.itemScrollController
                              .scrollTo(
                                  index: 1,
                                  duration: const Duration(seconds: 2),
                                  curve: Curves.easeInOutCubic),
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  isHovered ? Colors.red : Colors.transparent,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: Text(
                                '#about',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const Spacer(),
                    MouseHoverRegionBuilder(
                      builder: (isHovered) {
                        return InkWell(
                          onTap: () => _scrollProvider.itemScrollController
                              .scrollTo(
                                  index: 2,
                                  duration: const Duration(seconds: 2),
                                  curve: Curves.easeInOutCubic),
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  isHovered ? Colors.red : Colors.transparent,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: Text(
                                '#services',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const Spacer(),
                    MouseHoverRegionBuilder(
                      builder: (isHovered) {
                        return InkWell(
                          onTap: () => _scrollProvider.itemScrollController
                              .scrollTo(
                                  index: 4,
                                  duration: const Duration(seconds: 2),
                                  curve: Curves.easeInOutCubic),
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  isHovered ? Colors.red : Colors.transparent,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: Text(
                                '#work',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const Spacer(),
                    MouseHoverRegionBuilder(
                      builder: (isHovered) {
                        return InkWell(
                          onTap: () => _scrollProvider.itemScrollController
                              .scrollTo(
                                  index: 4,
                                  duration: const Duration(seconds: 2),
                                  curve: Curves.easeInOutCubic),
                          child: Container(
                            decoration: BoxDecoration(
                              color:
                                  isHovered ? Colors.red : Colors.transparent,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: Text(
                                '#contact',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    const Spacer(),
                    MouseHoverRegionBuilder(
                      builder: (isHovered) {
                        return Container(
                          decoration: BoxDecoration(
                            color: isHovered ? Colors.red : Colors.transparent,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Text(
                              '#resume',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
