import 'package:flutter/material.dart';

class AnimatedSwitcherAnimation extends StatefulWidget {
  const AnimatedSwitcherAnimation({super.key});

  @override
  State<AnimatedSwitcherAnimation> createState() =>
      _AnimatedSwitcherAnimationState();
}

class _AnimatedSwitcherAnimationState extends State<AnimatedSwitcherAnimation> {
  int count = 0;
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedSwitcher')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: _showFirst
                  ? Container(
                      key: const ValueKey<int>(1),
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                      child: const Center(
                        child: Text(
                          'Widget 1',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : Container(
                      key: const ValueKey<int>(2),
                      width: 200,
                      height: 200,
                      color: Colors.green,
                      child: const Center(
                        child: Text(
                          'Widget 2',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => setState(() {
                _showFirst = !_showFirst;
              }),
              child: const Text('Change Widgets'),
            ),
          ],
        ),
      ),
    );
  }
}
