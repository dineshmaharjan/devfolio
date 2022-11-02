import 'package:devfolio/core/utils/responsive/responsive_util.dart';
import 'package:devfolio/ui/sections/about/about_mobile.dart';
import 'package:devfolio/ui/sections/about/about_tablet.dart';
import 'package:devfolio/ui/sections/about/about_web.dart';
import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveUtil(
        webWidget:  AboutWeb(),
        tabletWidget:  AboutTablet(),
        mobileWidget:  AboutMobile());
  }
}
