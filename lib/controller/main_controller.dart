import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

// Include generated file
part 'main_controller.g.dart';

// This is the class used by rest of your codebase
class MainController = MainControllerBase with _$MainController;

abstract class MainControllerBase with Store {
  final ScrollController _scrollController = ScrollController();

  @observable
  int _index = 0;

  @observable
  bool _isAtBottom = false;

  set pageIndex(int index) {
    _index = index;
    scrollAnimated(_index.toDouble());
  }

  int get pageIndex {
    return _index;
  }

  set atBottom(bool value) {
    _isAtBottom = value;
  }

  bool get atBottom {
    return _isAtBottom;
  }

  ScrollController get scrollController {
    return _scrollController;
  }

  void scrollAnimated(double position) {
    scrollController.animateTo(position,
        duration: const Duration(seconds: 1), curve: Curves.ease);
  }
}
