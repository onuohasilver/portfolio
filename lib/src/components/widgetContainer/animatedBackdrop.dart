import 'package:flutter/material.dart';

class AnimatedBackdrop extends StatefulWidget {
  final IconData? floatIcon;
  const AnimatedBackdrop({
    Key? key,
    this.floatIcon,
  }) : super(key: key);

  @override
  _AnimatedBackdropState createState() => _AnimatedBackdropState();
}

class _AnimatedBackdropState extends State<AnimatedBackdrop>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation animation;
  late Animation reverseAnimation;
  @override
  void initState() {
    animationController = AnimationController(
      duration: Duration(seconds: 7),
      lowerBound: .5,
      vsync: this,
    );
    animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
          curve: Interval(0.1, 1.0, curve: Curves.bounceInOut),
          parent: animationController),
    );
    reverseAnimation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
          curve: Interval(0.1, 1.0, curve: Curves.bounceInOut),
          parent: animationController),
    );
    animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
        animation: animationController,
        builder: (context, snapshot) {
          return Stack(
            children: [
              RotationObject(
                animationController: animationController,
                top: height * .2,
                floatIcon: widget.floatIcon!,
              ),
              RotationObject(
                animationController: animation,
                size: 2.5,
                left: width * .6,
                floatIcon: widget.floatIcon!,
              ),
              RotationObject(
                animationController: animation,
                size: 1.5,
                left: width * .3,
                top: height * .7,
                floatIcon: widget.floatIcon!,
              ),
              RotationObject(
                animationController: reverseAnimation,
                left: width * .2,
                top: height * .1,
                size: 3,
                floatIcon: widget.floatIcon!,
              ),
              RotationObject(
                animationController: animationController,
                left: width * .4 * animation.value,
                top: height * .2,
                size: 2.5,
                floatIcon: widget.floatIcon!,
              ),
              RotationObject(
                animationController: animationController,
                size: 2.4,
                left: width * .2,
                top: height * .5 * animationController.value,
                floatIcon: widget.floatIcon!,
              ),
              RotationObject(
                animationController: animationController,
                size: 1.9,
                left: height * .32,
                top: height * .9 * animation.value,
                floatIcon: widget.floatIcon!,
              ),
              RotationObject(
                animationController: animationController,
                size: 2.4,
                left: width * .7,
                top: height * .4 * animation.value,
                floatIcon: widget.floatIcon!,
              ),
            ],
          );
        });
  }
}

class RotationObject extends StatelessWidget {
  const RotationObject({
    Key? key,
    @required this.animationController,
    this.size = 1,
    this.left,
    this.right,
    this.top,
    this.bottom,
    required this.floatIcon,
  }) : super(key: key);

  final dynamic animationController;
  final double size;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final IconData floatIcon;
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      left: left,
      right: right,
      top: top,
      bottom: bottom,
      child: RotationTransition(
        turns: animationController,
        child: Opacity(
          opacity: animationController.value * 1,
          child: Icon(floatIcon,
              color: Colors.lightBlue.withOpacity(.1),
              size: animationController.value * 60 * size),
        ),
      ),
    );
  }
}
