import 'package:flutter/material.dart';

class AnimatedCursorState {
  const AnimatedCursorState({
    this.offset = Offset.zero,
    this.size = kDefaultSize,
    this.decoration = kDefaultDecoration,
    this.isViewDemo = false,
  });

  static const Size kDefaultSize = Size(20, 20);
  static const BoxDecoration kDefaultDecoration = BoxDecoration(
    borderRadius: BorderRadius.all(
      Radius.circular(90),
    ),
    color: Colors.black12,
  );
  static const bool kIsViewDemo = false;

  final BoxDecoration decoration;
  final Offset offset;
  final Size size;
  final bool isViewDemo;
}
