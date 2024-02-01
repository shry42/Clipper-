import 'package:flutter/material.dart';

class example1 extends CustomClipper {
  @override
  getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
