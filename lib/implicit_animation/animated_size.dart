import 'package:flutter/material.dart';

class AnimatedSizeAnimation extends StatefulWidget {
  const AnimatedSizeAnimation({super.key});

  @override
  State<AnimatedSizeAnimation> createState() => _AnimatedSizeAnimationState();
}

class _AnimatedSizeAnimationState extends State<AnimatedSizeAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedSize')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            toggle = !toggle;
          }),
          child: AnimatedSize(
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
            child: FlutterLogo(size: toggle ? 50 : 100),
          ),
        ),
      ),
    );
  }
}
