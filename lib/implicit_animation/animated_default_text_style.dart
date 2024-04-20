import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleAnimation extends StatefulWidget {
  const AnimatedDefaultTextStyleAnimation({super.key});

  @override
  State<AnimatedDefaultTextStyleAnimation> createState() =>
      _AnimatedDefaultTextStyleAnimationState();
}

class _AnimatedDefaultTextStyleAnimationState
    extends State<AnimatedDefaultTextStyleAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedDefaultTextStyle')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            toggle = !toggle;
          }),
          child: AnimatedDefaultTextStyle(
            style: TextStyle(
              color: toggle ? Colors.blue : Colors.red,
              fontSize: toggle ? 24 : 32,
              fontWeight: toggle ? FontWeight.bold : FontWeight.normal,
            ),
            duration: const Duration(seconds: 1),
            child: const Text('Flutter'),
          ),
        ),
      ),
    );
  }
}
