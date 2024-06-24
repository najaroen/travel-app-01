import 'package:flutter/material.dart';

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = Colors.red;
    final path = Path();
    path.lineTo(0, size.height * 0.2);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.6);
    // path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
