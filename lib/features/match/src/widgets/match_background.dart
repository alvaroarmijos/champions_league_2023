import 'package:flutter/material.dart';

class Matchbackground extends StatelessWidget {
  const Matchbackground({
    super.key,
    required this.imageCover,
  });

  final String imageCover;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 0.3;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return SizedBox(
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            imageCover,
            colorBlendMode: BlendMode.darken,
            color: theme.colorScheme.primary.withOpacity(0.7),
            fit: BoxFit.cover,
            width: width,
            height: height,
          ),
          HeaderCurvo(
            height: height,
            width: width,
          ),
        ],
      ),
    );
  }
}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    lapiz.color = Colors.white;
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 25;

    final path = Path();

    path.moveTo(0, size.height * 0.25);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.5, size.height, 0, size.height * 0.75);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
