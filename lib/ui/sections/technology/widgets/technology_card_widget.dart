import 'package:devfolio/core/utils/responsive/responsive_util.dart';
import 'package:devfolio/core/utils/screen_utils.dart';
import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
import 'package:flutter/material.dart';

class TechnologyCardWidget extends StatelessWidget {
  const TechnologyCardWidget({ Key? key, required this.title, required this.path}) : super(key: key);
  final String title;
  final String path;

  @override
  Widget build(BuildContext context) {
    return MouseHoverRegionBuilder(
      builder: (isHovered) {
        return Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(16),
          child: Card(
            semanticContainer: true,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            color: isHovered
                ? Colors.grey.withOpacity(0.6)
                : Colors.grey.withOpacity(0.05),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    path,
                    width: ScreenUtils.isWebOrDesktop(context)?120:100,
                    height: ScreenUtils.isWebOrDesktop(context)?120:100,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: const EdgeInsets.all(10),
          ),
        );
      },
    );
  }
}