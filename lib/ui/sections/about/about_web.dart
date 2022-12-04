import 'package:devfolio/core/utils/constants.dart';
import 'package:devfolio/core/widgets/horizontal_progress_label_widget.dart';
import 'package:flutter/material.dart';

class AboutWeb extends StatelessWidget {
  const AboutWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/dnes_two.jpg',
                  height: MediaQuery.of(context).size.height / 2,
                  filterQuality: FilterQuality.medium,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 64, vertical: 64),
                child: Column(
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
                    Row(
                      children: [
                        Expanded(
                          child: HorizontalProgressLabelWidget(
                            title: "Android",
                            progressValue: 0.82,
                            tweenEnd: 75,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: HorizontalProgressLabelWidget(
                            title: "Flutter",
                            progressValue: 0.78,
                            tweenEnd: 75,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: HorizontalProgressLabelWidget(
                            title: "Flutter-Web",
                            progressValue: 0.58,
                            tweenEnd: 75,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: HorizontalProgressLabelWidget(
                            title: "iOS",
                            progressValue: 0.25,
                            tweenEnd: 75,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: HorizontalProgressLabelWidget(
                            title: "Java",
                            progressValue: 0.75,
                            tweenEnd: 75,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: HorizontalProgressLabelWidget(
                            title: "Kotlin",
                            progressValue: 0.77,
                            tweenEnd: 75,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: HorizontalProgressLabelWidget(
                            title: "Python",
                            progressValue: 0.61,
                            tweenEnd: 75,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: HorizontalProgressLabelWidget(
                            title: "Game Development",
                            progressValue: 0.45,
                            tweenEnd: 75,
                          ),
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
    );
  }
}
