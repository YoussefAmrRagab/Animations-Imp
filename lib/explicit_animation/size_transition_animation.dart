import 'package:flutter/material.dart';

class SizeTransitionAnimation extends StatefulWidget {
  const SizeTransitionAnimation({super.key});

  @override
  State<SizeTransitionAnimation> createState() =>
      _SizeTransitionAnimationState();
}

class _SizeTransitionAnimationState extends State<SizeTransitionAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  bool toggle = true;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this);
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
      appBar: AppBar(title: const Text('Size Transition')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizeTransition(
              sizeFactor: Tween<double>(
                begin: 1,
                end: 0.5,
              ).animate(controller),
              axis: Axis.horizontal,
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
