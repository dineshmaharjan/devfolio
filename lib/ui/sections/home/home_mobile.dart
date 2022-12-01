import 'package:devfolio/core/utils/social_utils.dart';
import 'package:devfolio/core/widgets/mouse_hover_region_builder.dart';
import 'package:flutter/material.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      constraints: const BoxConstraints(maxWidth: 700),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Bonjour, I\'m',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Dinesh Maharjan',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Center(
                  child: Text(
                    'I\'m Mobile application developer based in #Nepal. I strive to build immersive and beautiful mobile applications through carefully crafted code and user-centric desing ',
                    softWrap: true,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
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
                              color: isHover ? Colors.red : Colors.black,
                            ),
                          );
                        }),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFFCAE16),
                    ),
                    overlayColor: MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.hovered)) {
                          return Colors.yellow[700]!.withOpacity(0.5);
                        }
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed)) {
                          return Colors.grey.withOpacity(0.12);
                        }
                        return null; // Defer to the widget's default.
                      },
                    ),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Contact Me',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Align(
          //   alignment: Alignment.centerRight,
          //   child: Stack(
          //     children: [
          //       Image.asset(
          //         'assets/images/profile_dnes.png',
          //         filterQuality: FilterQuality.medium,
          //         fit: BoxFit.cover,
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
