import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalAnimation extends StatefulWidget {
  const AnimatedPositionedDirectionalAnimation({super.key});

  @override
  State<AnimatedPositionedDirectionalAnimation> createState() =>
      _AnimatedPositionedDirectionalAnimationState();
}

class _AnimatedPositionedDirectionalAnimationState
    extends State<AnimatedPositionedDirectionalAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedPositionedDirectional')),
      body: Stack(
        children: [
          AnimatedPositionedDirectional(
            duration: const Duration(seconds: 1),
            curve: Curves.easeIn,
            top: toggle ? 20 : 140,
            end: toggle ? 20 : 140,
            child: GestureDetector(
              onTap: () => setState(() {
                toggle = !toggle;
              }),
              child: const FlutterLogo(size: 100),
            ),
          ),
        ],
      ),
    );
  }
}
