import 'package:devfolio/core/utils/responsive/responsive_util.dart';
import 'package:devfolio/ui/sections/services/service_mobile.dart';
import 'package:devfolio/ui/sections/services/service_tablet.dart';
import 'package:devfolio/ui/sections/services/service_web.dart';
import 'package:flutter/material.dart';

class ServiceSection extends StatelessWidget {
  const ServiceSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveUtil(
      webWidget: ServiceWeb(),
      mobileWidget: ServiceMobile(),
      tabletWidget: ServiceTablet(),
    );
  }
}
