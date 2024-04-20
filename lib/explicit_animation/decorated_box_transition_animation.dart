import 'package:flutter/material.dart';

class DecoratedBoxTransitionAnimation extends StatefulWidget {
  const DecoratedBoxTransitionAnimation({super.key});

  @override
  State<DecoratedBoxTransitionAnimation> createState() =>
      _DecoratedBoxTransitionAnimationState();
}

class _DecoratedBoxTransitionAnimationState
    extends State<DecoratedBoxTransitionAnimation>
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
      appBar: AppBar(title: const Text('DecoratedBox Transition')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              toggle ? controller.reverse() : controller.forward();
              toggle = !toggle;
            });
          },
          child: DecoratedBoxTransition(
            decoration: DecorationTween(
              begin: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              end: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,
              ),
            ).animate(controller),
            child: const SizedBox(
              width: 200,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
