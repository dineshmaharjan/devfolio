import 'package:devfolio/core/utils/responsive/responsive_util.dart';
import 'package:devfolio/ui/sections/home/home_mobile.dart';
import 'package:devfolio/ui/sections/home/home_tablet.dart';
import 'package:devfolio/ui/sections/home/home_web.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveUtil(
        webWidget: HomeWeb(),
        tabletWidget: HomeTablet(),
        mobileWidget: HomeMobile());
  }
}
