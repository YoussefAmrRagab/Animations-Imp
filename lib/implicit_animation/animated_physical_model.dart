import 'package:flutter/material.dart';

class AnimatedPhysicalModelAnimation extends StatefulWidget {
  const AnimatedPhysicalModelAnimation({super.key});

  @override
  State<AnimatedPhysicalModelAnimation> createState() =>
      _AnimatedPhysicalModelAnimationState();
}

class _AnimatedPhysicalModelAnimationState
    extends State<AnimatedPhysicalModelAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('AnimatedPhysicalModel')),
      body: Center(
        child: AnimatedPhysicalModel(
          duration: const Duration(milliseconds: 500),
          shape: BoxShape.rectangle,
          elevation: toggle ? 0 : 6,
          color: Colors.white,
          shadowColor: Colors.grey,
          borderRadius: BorderRadius.circular(10),
          curve: Curves.easeIn,
          child: GestureDetector(
            onTap: () => setState(() {
              toggle = !toggle;
            }),
            child: const FlutterLogo(size: 100),
          ),
        ),
      ),
    );
  }
}
