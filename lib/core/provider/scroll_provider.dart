import 'package:flutter/widgets.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class ScrollProvider extends ChangeNotifier {
  final ScrollController _scrollController = ScrollController();

  final ItemScrollController _itemScrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();

  ScrollController get controller => _scrollController;
  ItemScrollController get itemScrollController => _itemScrollController;

  ItemPositionsListener get itemPositionListener => _itemPositionsListener;

  void scrollAnimated(double position) {
    _scrollController.animateTo(position,
        duration: const Duration(seconds: 1), curve: Curves.ease);
  }
}
