import 'package:flutter/material.dart';

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: CustomShapes(),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}

class CustomShapes extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);

    var startPoint = Offset(size.width - 250, size.height - 20);
    var endPoint = const Offset(0, 0);
    path.quadraticBezierTo(
        startPoint.dx, startPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
