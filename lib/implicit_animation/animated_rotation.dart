import 'package:flutter/material.dart';

class AnimatedRotationAnimation extends StatefulWidget {
  const AnimatedRotationAnimation({super.key});

  @override
  State<AnimatedRotationAnimation> createState() =>
      _AnimatedRotationAnimationState();
}

class _AnimatedRotationAnimationState extends State<AnimatedRotationAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedRotation')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            toggle = !toggle;
          }),
          child: AnimatedRotation(
            duration: const Duration(seconds: 2),
            turns: toggle ? 0 : 0.5,
            child: const FlutterLogo(size: 100),
          ),
        ),
      ),
    );
  }
}
