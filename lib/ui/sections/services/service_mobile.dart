import 'package:devfolio/ui/sections/services/widgets/service_card_widget.dart';
import 'package:flutter/material.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 72,
        ),
        const Text(
          'What I can do',
          style: TextStyle(
              color: Colors.black, fontSize: 32, fontWeight: FontWeight.w800),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: 128,
          height: 2,
          decoration: const BoxDecoration(
              color:Color(0xFFFCAE16), shape: BoxShape.rectangle),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              flex: 1,
              child: ServiceCardWidget(
                title: 'Mobile App Development',
                icon: Icons.phone_android,
                description:
                    "Can develop an application in both android and ios",
                    margin: 4,
              ),
            ),
            Expanded(
              flex: 1,
              child: ServiceCardWidget(
                title: 'Web App Development',
                icon: Icons.web,
                description: "Can develop web application using Flutter web",
                margin: 4,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              flex: 1,
              child: ServiceCardWidget(
                title: 'Data science',
                icon: Icons.data_usage,
                description: "Experience in Natural Language processing",
                margin: 4,
              ),
            ),
            Expanded(
              flex: 1,
              child: ServiceCardWidget(
                title: 'Firebase',
                icon: Icons.phone_android_rounded,
                description: "Can provide services with firebase",
                margin: 4,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Expanded(
              flex: 1,
              child: ServiceCardWidget(
                title: 'Prototyping',
                icon: Icons.music_note_outlined,
                description: "Can provide prototype service for mobile apps",
                margin: 4,
              ),
            ),
            Expanded(
              flex: 1,
              child: ServiceCardWidget(
                title: 'Support',
                icon: Icons.support,
                description: "Support for the services.",
                margin: 4,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
