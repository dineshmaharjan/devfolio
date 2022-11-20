import 'package:devfolio/controller/main_controller.dart';
import 'package:devfolio/core/provider/scroll_provider.dart';
import 'package:devfolio/core/utils/screen_utils.dart';
import 'package:devfolio/ui/sections/main/main_section.dart';
import 'package:devfolio/ui/sections/navbar/mobile_navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/sections/navbar/navbar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
   WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
       ChangeNotifierProvider(create:   (_)=>ScrollProvider()),
        Provider<MainController>(
          create: (_) => MainController(),
        )
      ],
      child:const MyApp(),
    ),
  );
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
        textTheme: GoogleFonts.gaeguTextTheme(),
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
              padding:
                !ScreenUtils.isWebOrDesktop(context)?  const EdgeInsets.all( 0 ):const EdgeInsets.only(left: 24,right: 24),
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
