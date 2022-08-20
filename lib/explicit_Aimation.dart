import 'package:flutter/material.dart';

class ExplicitAnimation extends StatefulWidget {
  const ExplicitAnimation({Key? key}) : super(key: key);

  @override
  State<ExplicitAnimation> createState() => _ExplicitAnimationState();
}

class _ExplicitAnimationState extends State<ExplicitAnimation>
    with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  // late Animation<double> _animation;
  // late Animation<AlignmentGeometry> _animation2;
     late Animation<Offset> animation3;

  @override
  void initState() {
    super.initState();


    _animationController=
        AnimationController(vsync: this, duration: Duration(seconds: 1))..repeat();
    // _animation2 = Tween<AlignmentGeometry>(
    //         begin: Alignment.topRight, end: Alignment.bottomLeft)
    //     .animate(CurvedAnimation(
    //         parent: _animationController, curve: Curves.bounceOut));
    //there is also a DecorationAnimation used as tween

    animation3 = Tween<Offset>(begin: Offset(0.0,0.0),end: Offset(2.2,2.2)).animate(CurvedAnimation(parent: _animationController, curve: Curves.bounceIn));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    // _animationController.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            // RotationTransition(
            //   turns: _animation,
            //   child: FlutterLogo(
            //     size: 50,
            //   ),
            // ),
            // AlignTransition(
            //   alignment: _animation2,
            //   child: FlutterLogo(
            //     size: 50,
            //   ),
            // ),
            SlideTransition(position:  animation3,child: FlutterLogo(size: 60,), )
          ],
        ),
      ),
    );
  }
}
