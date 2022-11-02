import 'package:devfolio/core/utils/responsive/responsive_util.dart';
import 'package:devfolio/ui/sections/getInTouch/get_in_touch_mobile.dart';
import 'package:devfolio/ui/sections/getInTouch/get_in_touch_tablet.dart';
import 'package:devfolio/ui/sections/getInTouch/get_in_touch_web.dart';
import 'package:flutter/material.dart';

class GetInTouchSection extends StatelessWidget {
  const GetInTouchSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveUtil(
      webWidget: GetInTouchWeb(),
      tabletWidget: GetInTouchTablet(),
      mobileWidget: GetInTouchMobile(),
      
    );
  }
}