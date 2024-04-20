import 'package:flutter/material.dart';

class AnimatedAlignAnimation extends StatefulWidget {
  const AnimatedAlignAnimation({super.key});

  @override
  State<AnimatedAlignAnimation> createState() => _AnimatedAlignAnimationState();
}

class _AnimatedAlignAnimationState extends State<AnimatedAlignAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedAlign')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            toggle = !toggle;
          }),
          child: AnimatedAlign(
            alignment: toggle
                ? AlignmentDirectional.topStart
                : AlignmentDirectional.bottomEnd,
            duration: const Duration(seconds: 3),
            child: const FlutterLogo(size: 80),
          ),
        ),
      ),
    );
  }
}
