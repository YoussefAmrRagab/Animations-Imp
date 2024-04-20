import 'package:flutter/material.dart';

class AnimatedPositionedAnimation extends StatefulWidget {
  const AnimatedPositionedAnimation({super.key});

  @override
  State<AnimatedPositionedAnimation> createState() =>
      _AnimatedPositionedAnimationState();
}

class _AnimatedPositionedAnimationState
    extends State<AnimatedPositionedAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPositioned')),
      body: SizedBox(
        width: 200,
        height: 350,
        child: Stack(children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: toggle ? 0 : 100,
            left: toggle ? 0 : 20,
            child: GestureDetector(
              onTap: () => setState(() {
                toggle = !toggle;
              }),
              child: const FlutterLogo(size: 100),
            ),
          )
        ]),
      ),
    );
  }
}
