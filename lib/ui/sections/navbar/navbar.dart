import 'package:devfolio/controller/main_controller.dart';
import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({Key? key}) : super(key: key);

  @override
  _NavBarWidgetState createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  @override
  Widget build(BuildContext context) {
    var _mainController = context.watch<MainController>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 48),
              child: Text(
                'DevFolio',
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.normal,
                    fontSize: 16),
              ),
            ),
          ),
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
                          onTap: () {
                            _mainController.scrollAnimated(4);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: isHovered ? Colors.red : Colors.black,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 8),
                              child: Text(
                                'Home',
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
                            color: isHovered ? Colors.red : Colors.black,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Text(
                              'About',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16),
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
                            color: isHovered ? Colors.red : Colors.black,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Text(
                              'Services',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16),
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
                            color: isHovered ? Colors.red : Colors.black,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Text(
                              'Work',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16),
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
                            color: isHovered ? Colors.red : Colors.black,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Text(
                              'Contact',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16),
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
                            color: isHovered ? Colors.red : Colors.black,
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 8),
                            child: Text(
                              'Resume',
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
