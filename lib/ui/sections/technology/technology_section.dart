import 'package:devfolio/core/utils/responsive/responsive_util.dart';
import 'package:devfolio/ui/sections/technology/technology_mobile.dart';
import 'package:devfolio/ui/sections/technology/technology_tablet.dart';
import 'package:devfolio/ui/sections/technology/technology_web.dart';
import 'package:flutter/material.dart';

class TechnologySection extends StatelessWidget {
  const TechnologySection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveUtil(
      webWidget: TechnologyWeb(),
      tabletWidget: TechnologyTablet(),
      mobileWidget: TechnologyMobile(),
    );
  }
}