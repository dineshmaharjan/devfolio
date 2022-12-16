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
                  getProjectDescription(
                      imageUrl: "assets/images/portfolio_one.png",
                      title: "Kiosk",
                      description: "Kiosk restaurant app"),
                  getProjectDescription(
                      imageUrl: "assets/images/madal_bajau.png",
                      title: "Madal Bajau",
                      description: "Musical app"),
                  getProjectDescription(
                      imageUrl: "assets/images/kids_learn_math.png",
                      title: "Kids Learn Math",
                      description: "Simple math game "),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getProjectDescription(
                      imageUrl: "assets/images/smart_qr.png",
                      title: "Smart QR",
                      description: "Merchant App"),
                  getProjectDescription(
                      imageUrl: "assets/images/qpay_wallet.png",
                      title: "QPay Wallet",
                      description: "Wallet App"),
                  getProjectDescription(
                      imageUrl: "assets/images/qpay_merchant.png",
                      title: "QPay Merchant",
                      description: "Merchant App"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget getProjectDescription(
      {required String imageUrl,
      required String title,
      required String description}) {
    return Expanded(
      flex: 1,
      child: AnimatedCursorMouseRegion(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white54, width: 2),
          borderRadius: BorderRadius.circular(8),
          color: Colors.white10,
        ),
        child: MouseHoverRegionBuilder(builder: (isHovered) {
          return Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.height * 0.60,
                height: MediaQuery.of(context).size.height * 0.40,
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 16.0,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.height * 0.60,
                      height: MediaQuery.of(context).size.height * 0.40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            imageUrl,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 16.0,
                right: 16.0,
                left: 16.0,
                child: Visibility(
                  visible: isHovered,
                  child: Container(
                    width: MediaQuery.of(context).size.height * 0.40,
                    height: MediaQuery.of(context).size.height * 0.10,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.white.withOpacity(0.9),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    title,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    description,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              const Text(
                                'View details',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
