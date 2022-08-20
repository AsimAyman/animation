import 'package:flutter/material.dart';

import 'hero2.dart';

class Hero1 extends StatefulWidget {
  const Hero1({Key? key}) : super(key: key);

  @override
  State<Hero1> createState() => _Hero1State();
}

class _Hero1State extends State<Hero1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Builder(
        builder: (ctx) =>
         FloatingActionButton(
           onPressed: () {
            Navigator.push(ctx,MaterialPageRoute(builder: (_) => Hero2()));
          },
           child: Hero(
             tag: "sss",
             child: FlutterLogo(

            ),
           ),
         ),
      ),
    );
  }
}
