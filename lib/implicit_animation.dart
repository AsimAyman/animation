import 'package:flutter/material.dart';

class ImplicitAnimation extends StatefulWidget {
  const ImplicitAnimation({Key? key}) : super(key: key);

  @override
  State<ImplicitAnimation> createState() => _ImplicitAnimationState();
}

class _ImplicitAnimationState extends State<ImplicitAnimation> {
  Alignment _alignment = Alignment.bottomLeft;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implicit Animation"),
      ),
      body:  Center(
        child: AnimatedAlign(
            duration:const Duration(seconds: 2),
            alignment: _alignment,
            child: const FlutterLogo(
              size: 100,
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
             _alignment = _alignment == Alignment.bottomLeft?Alignment.topRight:Alignment.bottomLeft;
          });
        },
        child: Icon(Icons.upgrade_rounded),
      ),
    );
  }
}
