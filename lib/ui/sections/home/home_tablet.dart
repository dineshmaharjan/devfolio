import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:devfolio/core/utils/social_utils.dart';
import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
import 'package:flutter/material.dart';

class HomeTablet extends StatelessWidget {
  const HomeTablet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/background.jpg'),
        fit: BoxFit.cover,
      )),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/background.jpg',
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: DefaultTextStyle(
                      maxLines: 5,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 48,
                          fontWeight: FontWeight.w700),
                      child: AnimatedTextKit(
                        isRepeatingAnimation: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'I am Dinesh\n Maharjan',
                            speed: const Duration(milliseconds: 50),
                          ),
                          TypewriterAnimatedText(
                            'I build complete mobile application',
                            speed: const Duration(milliseconds: 50),
                          ),
                          TypewriterAnimatedText(
                            'Experienced in fintech application',
                            speed: const Duration(milliseconds: 50),
                          ),
                          TypewriterAnimatedText(
                            'Any fool can write code that a computer can understand. Good programmers write code that humans can understand. – Martin Fowler',
                            speed: const Duration(milliseconds: 50),
                          ),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ),

                  // const Text(
                  //   'I am Dinesh\n Maharjan',
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 48,
                  //       fontWeight: FontWeight.w700),
                  // ),
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
            ),
          ),
        ],
      ),
    );
  }
}