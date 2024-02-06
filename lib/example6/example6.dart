import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Example6 extends StatelessWidget {
  const Example6({super.key});

  // final dynamic WIDTH = 4000.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: Colors.green,
              height: 150,
              width: 120,
              child: CustomPaint(
                // size: Size(8000, 1200),
                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: Center(
                child: CustomPaint(
                  size: const Size(
                      100, 100), // Specify the size of the custom painting area
                  painter:
                      MyPainter(), // Use a custom painter to define the drawing
                ),
              ),
            ),
            SizedBox(
              height: 150,
              width: 120,
              child: CustomPaint(
                painter: RPSCustomPainterr(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(39, 24, 211, 50)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0773000, size.height * 0.0795833);
    path_1.lineTo(size.width * 0.0748000, size.height * 0.9058333);
    path_1.quadraticBezierTo(size.width * 0.7687000, size.height * 0.9090000,
        size.width * 0.9999000, size.height * 0.9099167);
    path_1.cubicTo(
        size.width * 0.6127000,
        size.height * 0.8187500,
        size.width * 0.6167000,
        size.height * 0.1605000,
        size.width * 0.9890000,
        size.height * 0.0795000);
    path_1.quadraticBezierTo(size.width * 0.7610000, size.height * 0.0795000,
        size.width * 0.0773000, size.height * 0.0795833);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(81, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainterr extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(39, 24, 211, 50)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9306000, size.height * 0.9095833);
    path_1.lineTo(size.width * 0.9329000, size.height * 0.0833333);
    path_1.quadraticBezierTo(size.width * 0.2390000, size.height * 0.0803333,
        size.width * 0.0078000, size.height * 0.0794167);
    path_1.cubicTo(
        size.width * 0.3950000,
        size.height * 0.1705000,
        size.width * 0.3912000,
        size.height * 0.8287500,
        size.width * 0.0189000,
        size.height * 0.9098333);
    path_1.quadraticBezierTo(size.width * 0.2469000, size.height * 0.9098333,
        size.width * 0.9306000, size.height * 0.9095833);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = const Color.fromARGB(81, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Create a Paint object to define the appearance of the shape
    final Paint paint = Paint()
      ..color = Colors.greenAccent // Set the color to green
      ..strokeWidth = 4 // Set the stroke width
      ..style = PaintingStyle.fill; // Set the style to fill

    // Calculate the center and radius of the circle
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    // Draw a circle on the canvas using
    // the specified Paint object
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // Return false to indicate that the painting
    // should not be repainted unless necessary
    return false;
  }
}
