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
    return Column(
      children: [
        Row(
          children: [
            AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset(55*_controller.value, 0 ),
                    child: Card(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/images/kiosk_app.png',
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.width / 2 * 0.4,
                        ),
                      ),
                    ),
                  );
                }),
            const Text(
              'Kiosk App for Restaurant',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),
          ],
        )
      ],
    );
  }

  Widget getProjectDescription(Size size) {
    return SizedBox(
      width: 100,
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

  Widget getProjectGrid(_crossAxisCount, _aspectRatio) {
    // return GridView.count(
    //   primary: false,
    //   shrinkWrap: true,
    //   padding: const EdgeInsets.all(20),
    //   crossAxisSpacing: 10,
    //   mainAxisSpacing: 10,
    //    childAspectRatio: (1 / .3),
    //   crossAxisCount: 3,
    //   children: <Widget>[
    //     Container(
    //       width: 100,
    //       height: 100,
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[100],
    //       child: const Text("He'd have you all unravel at the"),
    //     ),
    //        Container(
    //       width: 100,
    //       height: 100,
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[100],
    //       child: const Text("He'd have you all unravel at the"),
    //     ),
    //     Container(
    //       width: 100,
    //       height: 100,
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[100],
    //       child: const Text("He'd have you all unravel at the"),
    //     ),
    //     Container(
    //       width: 100,
    //       height: 100,
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[100],
    //       child: const Text("He'd have you all unravel at the"),
    //     ),
    //     Container(
    //       width: 100,
    //       height: 100,
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[100],
    //       child: const Text("He'd have you all unravel at the"),
    //     ),
    //     Container(
    //       width: 100,
    //       height: 100,
    //       padding: const EdgeInsets.all(8),
    //       color: Colors.teal[100],
    //       child: const Text("He'd have you all unravel at the"),
    //     ),

    //   ],
    // );

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
