import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

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
        style: const TextStyle(
            fontFamily: 'Encode Sans', color: Colors.white70, fontSize: 23),
        child: AnimatedTextKit(
          animatedTexts: _words
              .map((text) => TypewriterAnimatedText(text, speed: _textDuration))
              .toList(),
        ),
      ),
    );
  }
}
