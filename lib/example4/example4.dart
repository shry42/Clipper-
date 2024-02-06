import 'package:flutter/material.dart';

class Example4 extends StatelessWidget {
  const Example4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: CustomShapes(),
          child: Container(
            height: 400,
            width: 400,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}

class CustomShapes extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    var firstStart = Offset(size.width - 200, size.height - 150);
    var firstEnd = Offset(size.width - 320, size.height);
    path.moveTo(size.width - 320, size.height);
    path.lineTo(size.width - 180, size.height - 250);
    path.lineTo(size.width - 35, size.height);
    // path.lineTo(size.width - 200, size.height - 100);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // path.lineTo(size.width - 320, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
