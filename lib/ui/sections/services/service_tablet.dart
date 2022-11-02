import 'package:devfolio/ui/sections/services/widgets/service_card_widget.dart';
import 'package:flutter/material.dart';

class ServiceTablet extends StatelessWidget {
  const ServiceTablet({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'What I can do',
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
              color: Colors.white, shape: BoxShape.rectangle),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              ServiceCardWidget(
                  title: 'Mobile App Development', icon: Icons.phone_android),
              ServiceCardWidget(title: 'Web App Development', icon: Icons.web),
              ServiceCardWidget(title: 'Data science', icon: Icons.data_usage),
              ServiceCardWidget(
                  title: 'Rapid prototyping',
                  icon: Icons.phone_android_rounded),
              ServiceCardWidget(
                  title: 'Music', icon: Icons.music_note_outlined),
            ],
          ),
        ),
      ],
    );
  }
}