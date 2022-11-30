import 'package:flutter/material.dart';

class MouseHoverRegionBuilder extends StatefulWidget {
  final Function(bool isHovered) builder;

  const MouseHoverRegionBuilder({Key? key, required this.builder}) : super(key: key);

  @override
  State<MouseHoverRegionBuilder> createState() =>
      _MouseHoverRegionBuilderState();
}

class _MouseHoverRegionBuilderState extends State<MouseHoverRegionBuilder> {
  bool isWidgetHovered = false;

  @override
  Widget build(BuildContext context) {
    final widgetHovered = Matrix4.identity()..translate(0, -5, 0);
    final transform = isWidgetHovered ? widgetHovered : Matrix4.identity();

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => onEntered(true),
      onExit: (_) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        child: widget.builder(isWidgetHovered),
      ),
    );
  }

  void onEntered(bool isWidgetHovered) {
    setState(() {
      this.isWidgetHovered = isWidgetHovered;
    });
  }
}
