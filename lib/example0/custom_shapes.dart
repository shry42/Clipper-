import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

//For Triangle uncomment below

    // var path = Path()
    // ..lineTo(0, size.height)
    // ..lineTo(size.width, size.height)
    // ..close();
    // return path;

// For curve cut uncommet below
    // var path = Path();

    // path.lineTo(0, height - 10);
    // path.quadraticBezierTo(width / 2, height, width, height - 80);
    // path.lineTo(width, 0);
    // path.close();

    // return path;

    //For trinagle through moveto starting position
    // var path = Path()
    //   ..moveTo(size.width / 2, 0)
    //   ..lineTo(0, size.width)
    //   ..lineTo(size.width, size.height)
    //   ..close();
    // return path;

    //For QuadraticBezierTo shape in Triangle
    var controlPoint = Offset(size.width / 2, size.height / 2);
    var endpoint = Offset(size.width, size.height);

    Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endpoint.dx, endpoint.dy)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
