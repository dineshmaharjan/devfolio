import 'package:flutter/material.dart';

class ProjectsWeb extends StatefulWidget {
  const ProjectsWeb({Key? key}) : super(key: key);

  @override
  State<ProjectsWeb> createState() => _ProjectsWebState();
}

class _ProjectsWebState extends State<ProjectsWeb>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat(reverse: true);
    // _animation = Tween(begin: -500.0, end: 500.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, 50 * _controller.value),
              child: Image.asset(
                "assets/images/kiosk_1.png",
                height: 450,
                width: 200,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, 70 * _controller.value),
              child: Image.asset(
                "assets/images/kiosk_2.png",
                height: 450,
                  width: 200,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
          AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, 55 * _controller.value),
              child: Image.asset(
                "assets/images/kiosk_3.png",
                height: 450,
                  width: 200,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ],
    );
  }
}
