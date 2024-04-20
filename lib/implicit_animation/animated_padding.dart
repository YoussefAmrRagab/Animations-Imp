import 'package:flutter/material.dart';

class AnimatedPaddingAnimation extends StatefulWidget {
  const AnimatedPaddingAnimation({super.key});

  @override
  State<AnimatedPaddingAnimation> createState() =>
      _AnimatedPaddingAnimationState();
}

class _AnimatedPaddingAnimationState extends State<AnimatedPaddingAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPadding')),
      body: GestureDetector(
        onTap: () => setState(() {
          toggle = !toggle;
        }),
        child: AnimatedPadding(
          duration: const Duration(seconds: 1),
          padding: EdgeInsets.symmetric(
            horizontal: toggle ? 0 : MediaQuery.sizeOf(context).width / 3,
          ),
          curve: Curves.easeInOut,
          child: const FlutterLogo(size: 100),
        ),
      ),
    );
  }
}
