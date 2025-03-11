/**
 * Configurações do botão de dúvidas.
 */
library;
import 'package:flutter/material.dart';

//TODO: Implementar em view_absences.

/**
 * Classe [ButtonParameters] define os parâmetros do botão de dúvidas.
 */
class ButtonParameters extends StatelessWidget {
    const ButtonParameters({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: CustomPaint(
          size: Size(10, 10),
          painter: DrawQuestionMarkButton(),
        ),
      );
    }
}

/**
 * Classe [DrawQuestionMarkButton] desenha o botão de dúvidas.
 */
class DrawQuestionMarkButton extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
      final Paint paint = Paint()
        //Cor temporária.
        ..color = Color.fromRGBO(0, 125, 30, 1)
        ..strokeWidth = 4
        ..style = PaintingStyle.fill;
      final center = Offset(size.width / 2, size.height / 2);
      final radius = size.width / 2;

      canvas.drawCircle(center, radius, paint);
    }

    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
      return false;
  }
}