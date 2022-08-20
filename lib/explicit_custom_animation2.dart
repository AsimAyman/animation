import 'package:flutter/material.dart';

class ExplicitCustomAnimation2 extends StatefulWidget {
  const ExplicitCustomAnimation2({Key? key}) : super(key: key);

  @override
  State<ExplicitCustomAnimation2> createState() =>
      _ExplicitCustomAnimation2State();
}

class _ExplicitCustomAnimation2State extends State<ExplicitCustomAnimation2> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   _animationController=AnimationController(vsync: this,lowerBound: 0.0,upperBound: 1.0,duration: Duration(seconds: 2))..repeat();
   _animation = Tween<double>(begin:0.0,end: 2.0 ).animate(_animationController);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child:AnimatedButtonTranstion(width: _animationController,animation: _animation,)
      ),
    );
  }
}
class AnimatedButtonTranstion extends AnimatedWidget{
  AnimatedButtonTranstion({required width,required this.animation}):super(listenable:width);
  Listenable get width => listenable;
  Animation animation;

@override
  Widget build(BuildContext context){
  return  OutlinedButton(
      onPressed: () {},
      child: Text("Press"),
      style: OutlinedButton.styleFrom(
        side: BorderSide(width : animation.value),
      ),
  );

}
}