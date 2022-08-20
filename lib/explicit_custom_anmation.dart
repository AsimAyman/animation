import 'package:flutter/material.dart';

class ExplicitCustomAnimation extends StatefulWidget {
  const ExplicitCustomAnimation({Key? key}) : super(key: key);

  @override
  State<ExplicitCustomAnimation> createState() =>
      _ExplicitCustomAnimationState();
}

class _ExplicitCustomAnimationState extends State<ExplicitCustomAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1))
          ..repeat();
    _animation = Tween<Size>(begin: Size(0, 0), end: Size(500, 500)).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.decelerate));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (_, child) => FlutterLogo(
            size: _animation.value.height,
          ),

        ),
      ),
    );
  }
}
