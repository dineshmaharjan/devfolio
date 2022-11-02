import 'package:devfolio/core/utils/screen_utils.dart';
import 'package:devfolio/ui/sections/main/main_section.dart';
import 'package:devfolio/ui/sections/navbar/mobile_navigation_drawer.dart';
import 'package:flutter/material.dart';

import 'ui/sections/navbar/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DevFolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFF040404),
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
            appBar: !ScreenUtils.isWebOrDesktop(context)
                ? AppBar(
                    title: const Text(
                      'Devfolio',
                      style: TextStyle(color: Colors.white),
                    ),
                    centerTitle: true,
                    backgroundColor: const Color(0xFF040404),
                  )
                : null,
            drawer: !ScreenUtils.isWebOrDesktop(context)
                ? const MobileNavigationDrawer()
                : null,
            body: Padding(
              padding: EdgeInsets.all(
                  !ScreenUtils.isWebOrDesktop(context) ? 0 : 24),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ScreenUtils.isWebOrDesktop(context)
                      ? const SizedBox(
                          height: 16.0,
                        )
                      : const SizedBox(),
                  ScreenUtils.isWebOrDesktop(context)
                      ? const NavBarWidget()
                      : const SizedBox(),
                  const Expanded(
                    child: MainSection(),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
