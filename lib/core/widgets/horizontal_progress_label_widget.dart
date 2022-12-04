import 'package:flutter/material.dart';

class HorizontalProgressLabelWidget extends StatefulWidget {
  HorizontalProgressLabelWidget(
      {Key? key,
      required this.title,
      required this.progressValue,
      this.tweenEnd})
      : super(key: key);
  int? tweenEnd;
  double progressValue;
  String title;

  @override
  State<HorizontalProgressLabelWidget> createState() =>
      _HorizontalProgressLabelWidgetState();
}

class _HorizontalProgressLabelWidgetState
    extends State<HorizontalProgressLabelWidget> with TickerProviderStateMixin {
  late AnimationController _animController;

  @override
  void initState() {
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    _animController.value = widget.progressValue;
    Tween(begin: 0.0, end: 1.0).animate(_animController);
    _animController.forward();

    super.initState();
  }

  @override
  void dispose() {
    _animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.title),
            Text("${widget.progressValue}%"),
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: widget.progressValue,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
            minHeight: 10,
            backgroundColor: Colors.orange[300],
          ),
        ),
      ],
    );
  }
}
