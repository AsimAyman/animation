


import 'package:flutter/material.dart';

class FadeInImageCostum extends StatefulWidget {
  FadeInImageCostum({Key? key}) : super(key: key);

  @override
  State<FadeInImageCostum> createState() => _FadeInImageCostumState();
}

class _FadeInImageCostumState extends State<FadeInImageCostum> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage(placeholder: AssetImage("assets/im.png"),image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Image_created_with_a_mobile_phone.png/800px-Image_created_with_a_mobile_phone.png"),)
    );
  }
}

