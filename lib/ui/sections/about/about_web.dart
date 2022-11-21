import 'package:flutter/material.dart';

class AboutWeb extends StatelessWidget {
  const AboutWeb({Key? key}) : super(key: key);

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
          width: 100,
          height: 2,
          decoration: const BoxDecoration(
              color: Colors.white, shape: BoxShape.rectangle),
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.60,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      bottom: 0,
                      right: 10,
                      child: Container(
                        width: ((MediaQuery.of(context).size.height * 0.50)),
                        height:
                            ((MediaQuery.of(context).size.height * 0.60) - 60),
                        margin: const EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: Border.all(
                            color: Colors.white,
                            width: 4,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        margin: const EdgeInsets.only(
                          left: 64,
                          bottom: 48,
                          top: 16,
                        ),
                        child: Image.asset(
                          'assets/images/person.jpg',
                          fit: BoxFit.cover,
                          width:
                              (MediaQuery.of(context).size.height * 0.60) - 100,
                          height:
                              (MediaQuery.of(context).size.height * 0.60) - 100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              Flexible(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 64,vertical: 64),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: const [
                      SizedBox(
                        height: 24,
                      ),
                      Text(
                        "I'm Dinesh Maharjan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Expanded(
                        child: Text(
                          "Hey! Myself Dinesh and I am Mobile Application developer in Kathmandu. I am passionate about mobile application development.\n",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              height: 2,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
