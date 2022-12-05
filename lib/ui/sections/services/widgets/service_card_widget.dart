import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
import 'package:flutter/material.dart';

class ServiceCardWidget extends StatelessWidget {
  const ServiceCardWidget({ Key? key, required this.title, required this.icon, required this.description, this.margin,}) : super(key: key);
  final String title;
  final IconData icon;
  final String description;
  final double? margin;

  @override
  Widget build(BuildContext context) {
    return MouseHoverRegionBuilder(
      builder: (isHovered) {
        return Container(
          height: 250,
          margin:  EdgeInsets.all(margin ?? 16),
          child: Padding(
            padding:  EdgeInsets.all(margin ?? 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 48,
                  color: Colors.orange
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  title,
                   textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),

                  Text(
                  description,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

