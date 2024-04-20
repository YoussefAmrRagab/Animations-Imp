import 'package:flutter/material.dart';

class ScaleTransitionAnimation extends StatefulWidget {
  const ScaleTransitionAnimation({super.key});

  @override
  State<ScaleTransitionAnimation> createState() =>
      _ScaleTransitionAnimationState();
}

class _ScaleTransitionAnimationState extends State<ScaleTransitionAnimation>
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
      appBar: AppBar(title: const Text('Scale Transition')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: Tween<double>(
                begin: 0,
                end: 1,
              ).animate(controller),
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            ElevatedButton(
              onPressed: () => setState(() {
                toggle ? controller.reverse() : controller.forward();
                toggle = !toggle;
              }),
              child: const Text('Make animation'),
            )
          ],
        ),
      ),
    );
  }
}
