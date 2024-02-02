import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: CustomShapes(),
                child: Container(
                  color: Colors.deepOrangeAccent,
                  height: 200,
                ),
              )),
          ClipPath(
            clipper: CustomShapes(),
            child: Container(
              alignment: Alignment.center,
              color: Colors.redAccent,
              height: 180,
              child: const Text('Testing'),
            ),
          )
        ],
      ),
    );
  }
}

class CustomShapes extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    var firstStart = Offset(size.width / 5.0, size.height);

    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);

    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart =
        Offset(size.width - (size.width / 3.24), size.height - 105);

    var secondEnd = Offset(size.width, size.height - 0);

    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
