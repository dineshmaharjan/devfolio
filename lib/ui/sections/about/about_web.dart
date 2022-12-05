import 'package:devfolio/core/utils/constants.dart';
import 'package:devfolio/core/widgets/horizontal_progress_label_widget.dart';
import 'package:flutter/material.dart';

class AboutWeb extends StatelessWidget {
  const AboutWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const Text(
            'About Me',
            style: TextStyle(
                color: Colors.black, fontSize: 48, fontWeight: FontWeight.w800),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            width: 100,
            height: 2,
            decoration: const BoxDecoration(
                color: Color(0xFFFCAE16), shape: BoxShape.rectangle),
          ),
          const SizedBox(
            height: 24,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'assets/images/dnes_two.jpg',
                      height: MediaQuery.of(context).size.height,
                      filterQuality: FilterQuality.medium,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          aboutUs,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              height: 1.5,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "I have worked with following technologies",
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                height: 1.5,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 24,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: Colors.amber[600],
                                  ),
                                  const Text(
                                    "Flutter",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 48),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: Colors.amber[600],
                                  ),
                                  const Text(
                                    "Dart",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: Colors.amber[600],
                                  ),
                                  const Text(
                                    "Android",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 48),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: Colors.amber[600],
                                  ),
                                  const Text(
                                    "Kotlin",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: Colors.amber[600],
                                  ),
                                  const Text(
                                    "Java ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 48),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: Colors.amber[600],
                                  ),
                                  const Text(
                                    "Python",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: Colors.amber[600],
                                  ),
                                  const Text(
                                    "Flutter-Web ",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 48),
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_right_rounded,
                                    color: Colors.amber[600],
                                  ),
                                  const Text(
                                    "Unreal Engine-Blueprints",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        height: 1.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
