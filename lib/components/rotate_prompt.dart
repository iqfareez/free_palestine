import 'package:flutter/material.dart';

class RotatePrompt extends StatelessWidget {
  const RotatePrompt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 13),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxHeight > constraints.maxWidth) {
              return Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Colors.white.withAlpha(200),
                    borderRadius: BorderRadius.circular(18)),
                child: const Text('Rotate your phone'),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}
