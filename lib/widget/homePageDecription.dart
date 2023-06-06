import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:land_registration/constant/constants.dart';
import 'package:universal_html/html.dart' as html;
import '../constant/utils.dart';

class LeftDescription extends StatelessWidget {
  const LeftDescription({Key? key}) : super(key: key);
  static final appContainer = kIsWeb
      ? html.window.document.querySelectorAll('flt-glass-pane')[0]
      : null;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // title
        const FittedBox(
          child: Text('''Green Eye -     
Drone Hub''',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 50,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                //letterSpacing: 1.5,
              )),
        ),
        // Description

        const SizedBox(
          height: 30,
        ),
        Row(
          children: <Widget>[
            // button
            InkWell(
              onTap: () {},
              child: Container(
                width: 150,
                height: 57,
                child: const Center(
                  child: Text("Learn More",
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        letterSpacing: 2,
                      )),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xff08C076),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      color: Colors.black, width: 1, style: BorderStyle.solid),
                ),
              ),
            ),
            //
            const SizedBox(width: 30),
            Container(
              width: 200,
              height: 57,
              child: GestureDetector(
                onTap: () {
                  launchUrl("");
                },
                child: MouseRegion(
                  onHover: (PointerHoverEvent evt) {
                    appContainer?.style.cursor = 'pointer';
                  },
                  onExit: (PointerExitEvent evt) {
                    appContainer?.style.cursor = 'default';
                  },
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 15,
                        height: 34,
                        child: Icon(
                          Icons.play_circle_fill,
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Center(
                        child: Text(
                          "Tutorial",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Color(0xff08C076),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                    color: Colors.black, width: 1, style: BorderStyle.solid),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 100,
        )
      ],
    );
  }
}
