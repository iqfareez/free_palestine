import 'package:flutter/material.dart';

import 'components/bottom_text.dart';
import 'components/rotate_prompt.dart';

const Duration _textDuration = Duration(milliseconds: 55);

const List<String> _words = [
  '#IsraelKoyak',
  '#GazaUnderAttack',
  '#SaveSheikhJarrah',
  '#FreePalestine'
];

class PalestineFlag extends StatelessWidget {
  const PalestineFlag({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.black,
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
              )),
              Expanded(
                  child: Container(
                color: const Color(0xFF007A3D),
              )),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomPaint(
              painter: _DrawTriangle(),
              size: MediaQuery.of(context).size,
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: RotatePrompt(),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: BottomText(words: _words, textDuration: _textDuration),
          )
        ],
      ),
    );
  }
}

class _DrawTriangle extends CustomPainter {
  late Paint _paint;
  _DrawTriangle() {
    _paint = Paint()
      ..color = const Color(0xFFCE1126)
      ..style = PaintingStyle.fill;
  }
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.height / 1.6, size.height / 2)
      ..close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
