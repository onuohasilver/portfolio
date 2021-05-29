import 'package:flutter/material.dart';
import 'package:portfolio/src/components/widgetContainer/animatedBackdrop.dart';
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
            AnimatedBackdrop(
              floatIcon: Icons.code_outlined,
            ),
            Positioned.fill(
              top: size.h * .1,
              child: Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: size.w * .35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SlimTextButton(label: 'Portfolio'),
                      SlimTextButton(label: 'Notes'),
                      SlimTextButton(label: 'CV'),
                      SlimTextButton(label: 'Contact Me'),
                    ],
                  ),
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

class SlimTextButton extends StatelessWidget {
  const SlimTextButton({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    SizeReference size = SizeReference(context);
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: EdgeInsets.all(size.w * .005),
          child: Text(label,
              style: AppFonts(size).subtitle(
                0.01,
              )),
        ),
      ),
    );
  }
}
