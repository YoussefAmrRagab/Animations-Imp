import 'package:flutter/material.dart';

class AnimatedCrossFadeAnimation extends StatefulWidget {
  const AnimatedCrossFadeAnimation({super.key});

  @override
  State<AnimatedCrossFadeAnimation> createState() =>
      _AnimatedCrossFadeAnimationState();
}

class _AnimatedCrossFadeAnimationState
    extends State<AnimatedCrossFadeAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedCrossFade')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            toggle = !toggle;
          }),
          child: AnimatedCrossFade(
            firstChild: Container(
              color: Colors.blue,
              height: 100,
              width: 100,
            ),
            secondChild: const FlutterLogo(size: 100),
            crossFadeState:
                toggle ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
