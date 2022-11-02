import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Made in 💙 with Flutter \u00a9 Copyright 2022, Maharjan Dinesh',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
