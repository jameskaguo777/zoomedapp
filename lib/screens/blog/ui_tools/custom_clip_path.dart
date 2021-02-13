import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {

  final radius = 10.0;
  final arcHeight = 50.0;

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width, 0.0);
    path.lineTo(size.width, size.height);
    path.arcToPoint(Offset(size.width, size.height - arcHeight),
        radius: Radius.circular(radius));
    path.lineTo(size.width, size.height - arcHeight / 2);
    path.lineTo(0, size.height - arcHeight / 2);
    path.lineTo(0,size.height- arcHeight);
     path.arcToPoint(Offset(0, size.height),
        radius: Radius.circular(radius));
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;

}