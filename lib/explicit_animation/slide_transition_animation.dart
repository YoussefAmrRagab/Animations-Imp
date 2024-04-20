import 'package:flutter/material.dart';

class SlideTransitionAnimation extends StatefulWidget {
  const SlideTransitionAnimation({super.key});

  @override
  State<SlideTransitionAnimation> createState() =>
      _SlideTransitionAnimationState();
}

class _SlideTransitionAnimationState extends State<SlideTransitionAnimation>
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
      appBar: AppBar(title: const Text('Slide Transition')),
      body: Center(
        child: SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0),
            end: const Offset(0, -3),
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
