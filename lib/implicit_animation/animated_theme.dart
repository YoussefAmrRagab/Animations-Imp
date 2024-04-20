import 'package:flutter/material.dart';

class AnimatedThemeAnimation extends StatefulWidget {
  const AnimatedThemeAnimation({super.key});

  @override
  State<AnimatedThemeAnimation> createState() => _AnimatedThemeAnimationState();
}

class _AnimatedThemeAnimationState extends State<AnimatedThemeAnimation> {
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedTheme')),
      body: Center(
        child: AnimatedTheme(
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
          data: toggle ? ThemeData.light() : ThemeData.dark(),
          child: ElevatedButton(
            onPressed: () => setState(() {
              toggle = !toggle;
            }),
            child: const Text('Change theme'),
          ),
        ),
      ),
    );
  }
}
