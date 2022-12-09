import 'package:devfolio/core/widgets/animated_cursor_mouse_reggion.dart';
import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
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

  double multiplySize = 0.15;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5))
          ..repeat(reverse: true);
    // _animation = Tween(begin: -500.0, end: 500.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Projects',
            style: TextStyle(
                color: Colors.black, fontSize: 48, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 128,
            height: 2,
            decoration: const BoxDecoration(
                color: Color(0xFFFCAE16), shape: BoxShape.rectangle),
          ),
          Column(
            children: [
              const SizedBox(
                height: 48,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getProjectDescription(),
                  getProjectDescription(),
                  getProjectDescription(),
                ],
              ),
             
            ],
          ),
        ],
      ),
    );
  }

  Widget getProjectDescription() {
    return Expanded(
      flex: 1,
      child: MouseHoverRegionBuilder(builder: (isHovered) {
        return Container(
          width: MediaQuery.of(context).size.height * 0.40,
          height: MediaQuery.of(context).size.height * 0.45,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20.0,
                  offset: Offset(0, 8),
                )
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              AnimatedContainer(
                width: isHovered
                    ? MediaQuery.of(context).size.height * 0.62
                    : MediaQuery.of(context).size.height * 0.60,
                height: isHovered
                    ? MediaQuery.of(context).size.height * 0.27
                    : MediaQuery.of(context).size.height * 0.25,
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn,
                child: Container(
                  width: MediaQuery.of(context).size.height * 0.60,
                  height: MediaQuery.of(context).size.height * 0.25,
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/portfolio_one.png",
                      ),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Kiosk App for Restaurant',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Text(
                    'Kiosk app is used to order foods from menu for Dinne-in , and order items is print with KOT.',
                    maxLines: 1,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }

  Widget getProjectGrid(_crossAxisCount, _aspectRatio) {
    return Center(
      child: GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: 4,
        itemBuilder: (ctx, i) {
          return AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform.translate(
                  offset: Offset(0, 60 * _controller.value),
                  child: Card(
                    child: Container(
                      height: 290,
                      width: 290,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        width: 100,
                        height: 100,
                        padding: const EdgeInsets.all(8),
                        color: Colors.teal[100],
                        child: const Text("He'd have you all unravel at the"),
                      ),
                    ),
                  ),
                );
              });
        },
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 5,
          mainAxisExtent: 100,
        ),
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
                width: 100,
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
                width: 100,
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
                width: 100,
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ],
    );
  }
}
