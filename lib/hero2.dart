import 'package:flutter/material.dart';

class Hero2 extends StatefulWidget {
  const Hero2({Key? key}) : super(key: key);

  @override
  State<Hero2> createState() => _Hero2State();
}

class _Hero2State extends State<Hero2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "sss",
          child: FlutterLogo(
            size: 200,
          ),
        ),
      ),
    );
  }
}
