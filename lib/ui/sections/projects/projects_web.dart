import 'package:flutter/material.dart';

class ProjectsWeb extends StatefulWidget {
  const ProjectsWeb({Key? key}) : super(key: key);

  @override
  State<ProjectsWeb> createState() => _ProjectsWebState();
}

class _ProjectsWebState extends State<ProjectsWeb>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  // late Animation<double> _animation;

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
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: getProjectDescription(MediaQuery.of(context).size),
        ),
        getProjectImageWidget(),
      ],
    );
  }

  Widget getProjectDescription(Size size) {
    return SizedBox(
      width: size.width/2 *0.20,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'Kiosk App for Restaurant',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 48),
          ),
          Text(
            'Kiosk app is used to order foods from menu for Dinne-in , and order items is print with KOT.',
            maxLines: 1,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }

  Widget getProjectImageWidget() {
    return Row(
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
              offset: Offset(0, 60 * _controller.value),
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
