import 'package:flutter/material.dart';
import 'package:portfolio/src/core/constants.dart';
import 'package:portfolio/src/core/utilities/sizing.dart';

class Landing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeReference size = SizeReference(context);
    return Material(
      child: Container(
        height: size.h,
        width: size.w,
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              top: size.h * .1,
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      child: InkWell(
                        onTap: () {},
                        child: Text('Resume',
                            style: AppFonts(size).subtitle(
                              0.01,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: size.h * .3,
                    width: size.w * .15,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  SizedBox(height: size.h * .04),
                  Text(
                    ' Hey,',
                    style:
                        AppFonts(size).subtitle(0.022, color: Colors.white54),
                  ),
                  SizedBox(height: size.h * .04),
                  Wrap(
                    alignment: WrapAlignment.end,
                    crossAxisAlignment: WrapCrossAlignment.end,
                    children: [
                      Text(
                        'I am ',
                        style: AppFonts(size)
                            .subtitle(0.026, color: Colors.white54),
                      ),
                      Text(
                        ' Onuoha Obinna.',
                        style: AppFonts(size)
                            .subtitle(0.031, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.h * .014,
                  ),
                  Text('I build Software Solutions using Flutter.',
                      style:
                          AppFonts(size).subtitle(0.01, color: Colors.white54))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
