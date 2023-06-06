import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:land_registration/constant/constants.dart';
import 'package:universal_html/html.dart' as html;
import '../constant/utils.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  static final appContainer = kIsWeb
      ? html.window.document.querySelectorAll('flt-glass-pane')[0]
      : null;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // logo
          const Text(
            'DRONE HUB',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: InkWell(
                  child: MouseRegion(
                    onHover: (PointerHoverEvent evt) {
                      appContainer?.style.cursor = 'pointer';
                    },
                    onExit: (PointerExitEvent evt) {
                      appContainer?.style.cursor = 'default';
                    },
                    child: const Text(
                      'HOME',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1.627907,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const CheckPrivateKey(
                    //               val: "owner",
                    //             )));
                    Navigator.of(context).pushNamed(
                      '/login',
                      arguments: "owner",
                    );
                  },
                  child: MouseRegion(
                    onHover: (PointerHoverEvent evt) {
                      appContainer?.style.cursor = 'pointer';
                    },
                    onExit: (PointerExitEvent evt) {
                      appContainer?.style.cursor = 'default';
                    },
                    child: const Text(
                      'OWNER',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1.627907,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const CheckPrivateKey(
                    //               val: "UserLogin",
                    //             )));
                    Navigator.of(context).pushNamed(
                      '/login',
                      arguments: "UserLogin",
                    );
                  },
                  child: MouseRegion(
                    onHover: (PointerHoverEvent evt) {
                      appContainer?.style.cursor = 'pointer';
                    },
                    onExit: (PointerExitEvent evt) {
                      appContainer?.style.cursor = 'default';
                    },
                    child: const Text(
                      'USER',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1.627907,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const CheckPrivateKey(
                    //               val: "LandInspector",
                    //             )));
                    Navigator.of(context).pushNamed(
                      '/login',
                      arguments: "LandInspector",
                    );
                  },
                  child: MouseRegion(
                    onHover: (PointerHoverEvent evt) {
                      appContainer?.style.cursor = 'pointer';
                    },
                    onExit: (PointerExitEvent evt) {
                      appContainer?.style.cursor = 'default';
                    },
                    child: const Text(
                      'OFFICER',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1.627907,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: GestureDetector(
                  onTap: () async {
                    // await Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => RegisterUser()));
                  },
                  child: MouseRegion(
                    onHover: (PointerHoverEvent evt) {
                      appContainer?.style.cursor = 'pointer';
                    },
                    onExit: (PointerExitEvent evt) {
                      appContainer?.style.cursor = 'default';
                    },
                    child: const Text(
                      'ABOUT',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 1.627907,
                      ),
                    ),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(14.0),
              //   child: IconButton(
              //     onPressed: () {
              //       launchUrl(
              //           "https://github.com/saurabh-m-w/Blockchain-Based-Property-Registration");
              //     },
              //     iconSize: 30,
              //     icon: Image.asset(
              //       'assets/github-logo.png',
              //       color: Colors.black,
              //       width: 60.0,
              //       height: 60.0,
              //       fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
            ],
          )
        ],
      ),
    );
  }
}
