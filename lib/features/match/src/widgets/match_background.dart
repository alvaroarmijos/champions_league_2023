import 'package:flutter/material.dart';

class Matchbackground extends StatelessWidget {
  const Matchbackground({super.key});

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
            "https://images2.minutemediacdn.com/image/upload/c_crop,w_3891,h_2188,x_0,y_136/c_fill,w_720,ar_16:9,f_auto,q_auto,g_auto/images/GettyImages/mmsport/90min_es_international_web/01grdw5ve2px38t9crp7.jpg",
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
