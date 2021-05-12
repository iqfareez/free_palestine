import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class PalestineFlag extends StatelessWidget {
  final Duration _textDuration = Duration(milliseconds: 55);
  final List<String> _words = [
    '#IsraelKoyak',
    '#GazaUnderAttack',
    '#SaveSheikhJarrah',
    '#FreePalestine'
  ];

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
                color: Color(0xFF007A3D),
              )),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: CustomPaint(
              painter: DrawTriangle(),
              size: MediaQuery.of(context).size,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: RotateText(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomText(words: _words, textDuration: _textDuration),
          )
        ],
      ),
    );
  }
}

class RotateText extends StatelessWidget {
  const RotateText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13),
      child: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxHeight > constraints.maxWidth) {
            return Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Colors.white.withAlpha(200),
                  borderRadius: BorderRadius.circular(18)),
              child: Text('Rotate your phone'),
            );
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  const BottomText({
    Key? key,
    required List<String> words,
    required Duration textDuration,
  })  : _words = words,
        _textDuration = textDuration,
        super(key: key);

  final List<String> _words;
  final Duration _textDuration;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 13),
      child: DefaultTextStyle(
        style: TextStyle(
            fontFamily: 'Encode Sans', color: Colors.white, fontSize: 23),
        child: AnimatedTextKit(
          animatedTexts: _words
              .map((text) => TypewriterAnimatedText(text, speed: _textDuration))
              .toList(),
        ),
      ),
    );
  }
}

class DrawTriangle extends CustomPainter {
  late Paint _paint;
  DrawTriangle() {
    _paint = Paint()
      ..color = Color(0xFFCE1126)
      ..style = PaintingStyle.fill;
  }
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height / 1.6, size.height / 2);
    path.close();
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
