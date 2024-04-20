import 'package:flutter/material.dart';

class AnimatedContainerAnimation extends StatefulWidget {
  const AnimatedContainerAnimation({super.key});

  @override
  State<AnimatedContainerAnimation> createState() =>
      _AnimatedContainerAnimationState();
}

class _AnimatedContainerAnimationState
    extends State<AnimatedContainerAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedContainer')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            toggle = !toggle;
          }),
          child: AnimatedContainer(
            width: toggle ? 200 : 100,
            height: toggle ? 100 : 200,
            curve: Curves.fastOutSlowIn,
            duration: const Duration(seconds: 1),
            color: toggle ? Colors.red : Colors.blue,
          ),
        ),
      ),
    );
  }
}
