import 'package:flutter/material.dart';

class Example3 extends StatelessWidget {
  const Example3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipPath(
        clipper: CustomShape(),
        child: Container(
          color: Colors.green,
          height: 300,
        ),
      ),
    );
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 80);
    var firstStart = Offset(size.width - 150, size.height);
    var firstEnd = Offset(size.width, size.height - 80);
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
    // path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
