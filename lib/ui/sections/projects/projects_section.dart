import 'package:devfolio/core/utils/responsive/responsive_util.dart';
import 'package:devfolio/ui/sections/projects/projects_mobile.dart';
import 'package:devfolio/ui/sections/projects/projects_tablet.dart';
import 'package:devfolio/ui/sections/projects/projects_web.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveUtil(
      mobileWidget: ProjectsMobile(),
      tabletWidget: ProjectsTablet(),
      webWidget: ProjectsWeb(),
      
    );
  }
}