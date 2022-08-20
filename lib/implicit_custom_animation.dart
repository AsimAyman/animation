import 'package:flutter/material.dart';

//TweenAnimationBuilder
class ImplicitCustomAnimation extends StatefulWidget {
  const ImplicitCustomAnimation({Key? key}) : super(key: key);

  @override
  State<ImplicitCustomAnimation> createState() =>
      _ImplicitCustomAnimationState();
}

class _ImplicitCustomAnimationState extends State<ImplicitCustomAnimation> {
  double angle =0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Tween animation builder"),),
    body: Center(
    child: TweenAnimationBuilder<double>(
    duration: Duration(seconds: 2),
    tween:Tween(end: angle, begin: 0.0) ,
    builder:(context, value, child) => Transform.rotate(
    angle: value,
    child: child,
    ) ,
    child: FlutterLogo(size: 50,),
    ),
    ),
    floatingActionButton: FloatingActionButton(
    onPressed: (){

      setState(() {
        angle = angle==0.0?360.0:0.0;
      });
    },
    child: Icon(Icons.flip),

    )
    ,
  ); }
}