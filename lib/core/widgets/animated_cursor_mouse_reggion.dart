import 'package:devfolio/core/widgets/animated_cursor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedCursorMouseRegion extends StatefulWidget {
  const AnimatedCursorMouseRegion({Key? key, this.child, this.decoration, this.isViewDemo})
      : super(key: key);

  final Widget? child;
  final BoxDecoration? decoration;
  final bool? isViewDemo;

  @override
  State<AnimatedCursorMouseRegion> createState() => _AnimatedCursorMouseRegionState();
}

class _AnimatedCursorMouseRegionState extends State<AnimatedCursorMouseRegion> {
  final GlobalKey _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AnimatedCursorProvider>();

    return MouseRegion(
      key: _key,
      opaque: false,
      onHover: (_) => cubit.changeCursorPointer(_key, decoration: widget.decoration),
      onExit: (_) => cubit.resetCursor(),
      child: widget.child,
    );
  }
}