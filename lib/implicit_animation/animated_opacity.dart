import 'package:flutter/material.dart';

class AnimatedOpacityAnimation extends StatefulWidget {
  const AnimatedOpacityAnimation({super.key});

  @override
  State<AnimatedOpacityAnimation> createState() =>
      _AnimatedOpacityAnimationState();
}

class _AnimatedOpacityAnimationState extends State<AnimatedOpacityAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedOpacity')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            toggle = !toggle;
          }),
          child: AnimatedOpacity(
            duration: const Duration(seconds: 1),
            opacity: toggle ? 1 : 0.5,
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 100),
          ),
        ),
      ),
    );
  }
}
