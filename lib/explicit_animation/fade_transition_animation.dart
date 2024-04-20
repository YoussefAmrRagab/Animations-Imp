import 'package:flutter/material.dart';

class FadeTransitionAnimation extends StatefulWidget {
  const FadeTransitionAnimation({super.key});

  @override
  State<FadeTransitionAnimation> createState() =>
      _FadeTransitionAnimationState();
}

class _FadeTransitionAnimationState extends State<FadeTransitionAnimation>
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
      appBar: AppBar(title: const Text('Fade Transition')),
      body: Center(
        child: FadeTransition(
          opacity: Tween<double>(
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
