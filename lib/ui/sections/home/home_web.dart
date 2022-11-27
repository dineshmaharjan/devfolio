import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devfolio/core/utils/social_utils.dart';
import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Bonjour, I\'m',
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700),
          ),
          const Text(
            'Dinesh Maharjan',
            style: TextStyle(
                color: Colors.white,
                fontSize: 48,
                fontWeight: FontWeight.w700),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'I\'m',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 8,
              ),
              DefaultTextStyle(
                maxLines: 5,
                style: GoogleFonts.gaegu(
                  textStyle: const TextStyle(
                      color: Colors.redAccent,
                      fontSize: 48,
                      fontWeight: FontWeight.w700),
                ),
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'Mobile Application Developer',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w700),
                      speed: const Duration(milliseconds: 80),
                    ),
                    TypewriterAnimatedText(
                      'Freelancer',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w700),
                      speed: const Duration(milliseconds: 80),
                    ),
                    TypewriterAnimatedText(
                      'Musician',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w700),
                      speed: const Duration(milliseconds: 80),
                    ),
                    TypewriterAnimatedText(
                      'Traveller',
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w700),
                      speed: const Duration(milliseconds: 80),
                    ),
                  ],
                  onTap: () {},
                ),
              ),
            ],
          ),
          Wrap(
            children: socialIconURL
                .asMap()
                .entries
                .map(
                  (e) => MouseHoverRegionBuilder(builder: (isHover) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.network(
                        e.value,
                        height: 24,
                        width: 24,
                        color: isHover ? Colors.red : Colors.white,
                      ),
                    );
                  }),
                )
                .toList(),
          )
        ],
      ),
    );
  }
}
