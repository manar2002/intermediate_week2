import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  ImageCard({super.key, required this.img});
  late String img;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset(
        img,
        width: 100,
        height: 70,
        fit: BoxFit.fill,
      ),
    );
  }
}
