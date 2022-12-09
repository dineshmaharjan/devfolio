import 'package:devfolio/core/widgets/animated_cursor_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AnimatedCursorWidget extends StatelessWidget {
  const AnimatedCursorWidget({Key? key, this.child}) : super(key: key);

  final Widget? child;

  void _onCursorUpdate(PointerEvent event, BuildContext context) => context
      .read<AnimatedCursorProvider>()
      .updateCursorPosition(event.position);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AnimatedCursorProvider(),
      child: Consumer<AnimatedCursorProvider>(
        child: child,
        builder: (context, provider, child) {
          final state = provider.animatedState;
          return Stack(
            children: [
              if (child != null) child,
              Positioned.fill(
                child: MouseRegion(
                  opaque: false,
                  onHover: (event) => _onCursorUpdate(event, context),
                ),
              ),
              Visibility(
                 visible: state.offset != Offset.zero,
                child: AnimatedPositioned(
                  left: state.offset.dx - state.size.width / 2,
                  top: state.offset.dy - state.size.height / 2,
                  width: state.size.width,
                  height: state.size.height,
                  child: IgnorePointer(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeOutExpo,
                      width: state.size.width,
                      height: state.size.height,
                      decoration: state.decoration,
                    ),
                  ),
                  duration:const  Duration(milliseconds: 50),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
