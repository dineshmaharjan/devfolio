import 'package:flutter/material.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Column(
      children: [
        const Text(
          'ABOUT ME',
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
        const SizedBox(
          height: 16,
        ),
       Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/images/person.jpg', height:  MediaQuery.of(context).size.width*0.4,width: MediaQuery.of(context).size.width,),
              const SizedBox(
                width: 24,
              ),
             Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "I'm Dinesh Maharjan",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  const Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            height: 2,
                            fontWeight: FontWeight.w400),
                      ),
                    const Text(
                      "More about",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
            ],
          ),
      ],
    );
  }
}