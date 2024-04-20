import 'package:flutter/material.dart';

class RotationTransitionAnimation extends StatefulWidget {
  const RotationTransitionAnimation({super.key});

  @override
  State<RotationTransitionAnimation> createState() =>
      _RotationTransitionAnimationState();
}

class _RotationTransitionAnimationState
    extends State<RotationTransitionAnimation>
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
      appBar: AppBar(title: const Text('Rotation Transition')),
      body: Center(
        child: RotationTransition(
          turns: Tween<double>(
            begin: 1,
            end: 0,
          ).animate(controller),
          child: GestureDetector(
            onTap: () => setState(() {
              toggle ? controller.reverse() : controller.forward();
              toggle = !toggle;
            }),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
