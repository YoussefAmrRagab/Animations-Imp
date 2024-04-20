import 'package:flutter/material.dart';

class PositionedTransitionAnimation extends StatefulWidget {
  const PositionedTransitionAnimation({super.key});

  @override
  State<PositionedTransitionAnimation> createState() =>
      _PositionedTransitionAnimationState();
}

class _PositionedTransitionAnimationState
    extends State<PositionedTransitionAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool toggle = true;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Positioned Transition')),
      body: Stack(
        children: [
          PositionedTransition(
            rect: RelativeRectTween(
              begin: RelativeRect.fromSize(
                const Rect.fromLTRB(0, 0, 200, 200),
                const Size(200, 200),
              ),
              end: RelativeRect.fromSize(
                const Rect.fromLTRB(50, 50, 150, 150),
                const Size(200, 200),
              ),
            ).animate(controller),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  toggle ? controller.reverse() : controller.forward();
                  toggle = !toggle;
                });
              },
              child: const ColoredBox(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
