import 'package:flutter/material.dart';
import 'explicit_animation/curved_animation.dart';
import 'explicit_animation/decorated_box_transition_animation.dart';
import 'explicit_animation/fade_transition_animation.dart';
import 'explicit_animation/physics_based_animation.dart';
import 'explicit_animation/positioned_transition_animation.dart';
import 'explicit_animation/rotation_transition_animation.dart';
import 'explicit_animation/scale_transition_animation.dart';
import 'explicit_animation/size_transition_animation.dart';
import 'explicit_animation/slide_transition_animation.dart';
import 'explicit_animation/tween_animation.dart';
import 'implicit_animation/animated_align.dart';
import 'implicit_animation/animated_container.dart';
import 'implicit_animation/animated_cross_fade.dart';
import 'implicit_animation/animated_default_text_style.dart';
import 'implicit_animation/animated_opacity.dart';
import 'implicit_animation/animated_padding.dart';
import 'implicit_animation/animated_physical_model.dart';
import 'implicit_animation/animated_positioned.dart';
import 'implicit_animation/animated_positioned_directional.dart';
import 'implicit_animation/animated_rotation.dart';
import 'implicit_animation/animated_scale.dart';
import 'implicit_animation/animated_size.dart';
import 'implicit_animation/animated_switcher.dart';
import 'implicit_animation/animated_theme.dart';
import 'implicit_animation/tween_animation_builder.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animation')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 12, bottom: 6),
                child: Text(
                  'Implicit Animation',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              button(
                text: 'AnimatedContainer',
                destination: const AnimatedContainerAnimation(),
              ),
              button(
                text: 'AnimatedCrossFade',
                destination: const AnimatedCrossFadeAnimation(),
              ),
              button(
                text: 'AnimatedAlign',
                destination: const AnimatedAlignAnimation(),
              ),
              button(
                text: 'AnimatedDefaultTextStyle',
                destination: const AnimatedDefaultTextStyleAnimation(),
              ),
              button(
                text: 'AnimatedScale',
                destination: const AnimatedScaleAnimation(),
              ),
              button(
                text: 'AnimatedRotation',
                destination: const AnimatedRotationAnimation(),
              ),
              button(
                text: 'AnimatedOpacity',
                destination: const AnimatedOpacityAnimation(),
              ),
              button(
                text: 'AnimatedPadding',
                destination: const AnimatedPaddingAnimation(),
              ),
              button(
                text: 'AnimatedPositioned',
                destination: const AnimatedPositionedAnimation(),
              ),
              button(
                text: 'AnimatedSize',
                destination: const AnimatedSizeAnimation(),
              ),
              button(
                text: 'AnimatedSwitcher',
                destination: const AnimatedSwitcherAnimation(),
              ),
              button(
                text: 'AnimatedTheme',
                destination: const AnimatedThemeAnimation(),
              ),
              button(
                text: 'AnimatedPositionedDirectional',
                destination: const AnimatedPositionedDirectionalAnimation(),
              ),
              button(
                text: 'AnimatedPhysicalModel',
                destination: const AnimatedPhysicalModelAnimation(),
              ),
              button(
                text: 'TweenAnimationBuilder',
                destination: const TweenAnimationBuilderAnimation(),
              ),
              Divider(
                color: Colors.black,
                thickness: 1,
                indent: 10,
                endIndent: MediaQuery.sizeOf(context).width - 350,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 6),
                child: Text(
                  'Explicit Animation',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),
              button(
                text: 'Tween Animation',
                destination: const TweenAnimation(),
              ),
              button(
                text: 'Physics-Based Animation',
                destination: const PhysicsBasedAnimation(),
              ),
              button(
                text: 'Curved Animation',
                destination: const CurvedAnimationEx(),
              ),
              button(
                text: 'SlideTransition',
                destination: const SlideTransitionAnimation(),
              ),
              button(
                text: 'FadeTransition',
                destination: const FadeTransitionAnimation(),
              ),
              button(
                text: 'RotationTransition',
                destination: const RotationTransitionAnimation(),
              ),
              button(
                text: 'SizeTransition',
                destination: const SizeTransitionAnimation(),
              ),
              button(
                text: 'ScaleTransition',
                destination: const ScaleTransitionAnimation(),
              ),
              button(
                text: 'PositionedTransition',
                destination: const PositionedTransitionAnimation(),
              ),
              button(
                text: 'DecoratedBoxTransition',
                destination: const DecoratedBoxTransitionAnimation(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton button({required String text, required Widget destination}) =>
      ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => destination,
            ),
          );
        },
        child: Text(text),
      );
}
