import 'package:animation_course/animation/fade_transation.dart';
import 'package:animation_course/animation/size_transition.dart';
import 'package:animation_course/widgets/animation_item.dart';
import 'package:flutter/material.dart';

import '../animation/animated_builder.dart';
import '../animation/default_text_style_transation.dart';
import '../animation/indexed_stack_transation.dart';
import '../animation/positend_translation.dart';
import '../animation/position_directional_transition.dart';
import '../animation/rotaton_transition.dart';
import '../animation/tween_animation_builder.dart';

class ExplicitAnimation extends StatelessWidget {
  const ExplicitAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Explict Animation',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 10),
        itemBuilder: (_, idx) => explicitAnimationItems[idx],
        separatorBuilder: (_, __) => SizedBox(
          height: 10,
        ),
        itemCount: explicitAnimationItems.length,
      ),
    );
  }
}

List explicitAnimationItems = [
  AnimationItemWidget(
    title: 'Positioned Transition',
    widget: PositendTranslationExample(),
  ),
  AnimationItemWidget(
    title: 'Size Transition',
    widget: SizeTransitionExample(),
  ),
  AnimationItemWidget(
    title: 'Rotation Transition',
    widget: RotatonTransitionExample(),
  ),
  AnimationItemWidget(
    title: 'Animated Builder',
    widget: AnimatedBuilderExample(),
  ),
  AnimationItemWidget(
    title: 'Fade Transation',
    widget: FadeTransationExample(),
  ),
  AnimationItemWidget(
    title: 'Positend Directional Transition',
    widget: PositionDirectionalTransitionExample(),
  ),
  AnimationItemWidget(
    title: 'Tween Animation Builder',
    widget: TweenAnimationBuilderExample(),
  ),
  AnimationItemWidget(
    title: 'Default Text Style Transition',
    widget: DefaultTextStyleTransationExample(),
  ),
  AnimationItemWidget(
    title: 'Indexed Stack Transation',
    widget: IndexedStackTransationExample(),
  ),
];
