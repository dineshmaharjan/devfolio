import 'package:devfolio/ui/sections/technology/widgets/technology_card_widget.dart';
import 'package:flutter/material.dart';

class TechnologyTablet extends StatelessWidget {
  const TechnologyTablet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Technology Used',
          style: TextStyle(
              color: Colors.grey, fontSize: 48, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: 128,
          height: 2,
          decoration: const BoxDecoration(
              color: Colors.black, shape: BoxShape.rectangle),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              TechnologyCardWidget(
                  title: 'Kotlin', path: 'assets/icons/kotlin.png'),
              TechnologyCardWidget(
                  title: 'Flutter', path: 'assets/icons/flutter.png'),
              TechnologyCardWidget(
                  title: 'Dart', path: 'assets/icons/dart.png'),
              TechnologyCardWidget(
                  title: 'Java', path: 'assets/icons/java.png'),
              TechnologyCardWidget(
                  title: 'Python', path: 'assets/icons/python.png'),
              TechnologyCardWidget(
                  title: 'C++', path: 'assets/icons/c++_logo.png'),
              TechnologyCardWidget(
                  title: 'Figma', path: 'assets/icons/figma.png'),
              TechnologyCardWidget(
                  title: 'Unreal Engine', path: 'assets/icons/ue.png'),
            ],
          ),
        ),
      ],
    );
  }
}