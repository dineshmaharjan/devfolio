import 'package:devfolio/core/states/animated_cursor_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnimatedCursorProvider extends ChangeNotifier {

  AnimatedCursorProvider();
  var animatedState =  const AnimatedCursorState();

  void changeCursorPointer(GlobalKey key, {BoxDecoration? decoration}) {
    final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    if (renderBox == null) return;

    animatedState = AnimatedCursorState(
      size: renderBox.size,
      offset: renderBox
          .localToGlobal(Offset.zero)
          .translate(renderBox.size.width / 2, renderBox.size.height / 2),
      decoration: decoration ?? AnimatedCursorState.kDefaultDecoration,
    );
    notifyListeners();
  }

  void resetCursor(){
    animatedState=  const  AnimatedCursorState();
    notifyListeners();
  }

   void updateCursorPosition(Offset pos) {
    animatedState = AnimatedCursorState(offset: pos);
    notifyListeners();
  }
}
