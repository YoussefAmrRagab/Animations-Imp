import 'package:flutter/material.dart';

class CurvedAnimationEx extends StatefulWidget {
  const CurvedAnimationEx({super.key});

  @override
  State<CurvedAnimationEx> createState() => _CurvedAnimationExState();
}

class _CurvedAnimationExState extends State<CurvedAnimationEx>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 2), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
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
      appBar: AppBar(title: const Text('Curved Animation')),
      body: Center(
        child: FadeTransition(
          opacity: animation,
          child: Container(
            width: 200,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
