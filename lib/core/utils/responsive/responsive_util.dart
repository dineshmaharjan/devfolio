import 'package:devfolio/core/utils/screen_utils.dart';
import 'package:flutter/material.dart';

class ResponsiveUtil extends StatelessWidget {
  const ResponsiveUtil(
      {Key? key, required this.webWidget,  required this.tabletWidget, required this.mobileWidget})
      : super(key: key);

  final Widget webWidget;
  final Widget tabletWidget;
  final Widget mobileWidget;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context,constraints){
        if(ScreenUtils.isMobile(context)){
          return  mobileWidget;
        }else if(ScreenUtils.isTablet(context)){
          return tabletWidget;
        }else{
          return webWidget;
        }

      },
    );
  }
}
