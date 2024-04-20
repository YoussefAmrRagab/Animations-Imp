import 'package:flutter/material.dart';

class AnimatedScaleAnimation extends StatefulWidget {
  const AnimatedScaleAnimation({super.key});

  @override
  State<AnimatedScaleAnimation> createState() => _AnimatedScaleAnimationState();
}

class _AnimatedScaleAnimationState extends State<AnimatedScaleAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedScale')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            toggle = !toggle;
          }),
          child: AnimatedScale(
            duration: const Duration(seconds: 1),
            scale: toggle ? 1 : 10,
            curve: Curves.bounceInOut,
            child: const FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
