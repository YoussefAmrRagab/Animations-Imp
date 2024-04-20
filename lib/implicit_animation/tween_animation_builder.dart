import 'package:flutter/material.dart';

class TweenAnimationBuilderAnimation extends StatefulWidget {
  const TweenAnimationBuilderAnimation({super.key});

  @override
  State<TweenAnimationBuilderAnimation> createState() =>
      _TweenAnimationBuilderAnimationState();
}

class _TweenAnimationBuilderAnimationState
    extends State<TweenAnimationBuilderAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TweenAnimationBuilder')),
      body: Center(
        child: GestureDetector(
          onTap: () => setState(() {
            toggle = !toggle;
          }),
          child: TweenAnimationBuilder(
            duration: const Duration(seconds: 2),
            tween: toggle
                ? Tween<double>(begin: 2, end: .5)
                : Tween<double>(begin: .5, end: 2),
            curve: Curves.bounceOut,
            builder: (context, value, child) =>
                Transform.scale(scale: value, child: child),
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
