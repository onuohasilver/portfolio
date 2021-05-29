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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.h * .3,
              width: size.w * .15,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(.2),
              ),
            ),
            SizedBox(height: size.h * .04),
            Text(
              'Hello,',
              style: AppFonts(size).subtitle(0.03, color: Colors.white70),
            ),
            SizedBox(height: size.h * .04),
            Wrap(
              children: [
                Text(
                  'I am ',
                  style: AppFonts(size).subtitle(
                    0.045,
                  ),
                ),
                Text(
                  ' Onuoha Obinna.',
                  style: AppFonts(size)
                      .subtitle(0.045, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
