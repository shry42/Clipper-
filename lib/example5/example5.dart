import 'package:flutter/material.dart';

class Example5 extends StatelessWidget {
  const Example5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: CustomShapes(),
          child: Container(
            color: Colors.greenAccent,
            height: 400,
            width: 400,
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
    path.moveTo(size.width - 300, 0);
    path.lineTo(size.width - 300, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
