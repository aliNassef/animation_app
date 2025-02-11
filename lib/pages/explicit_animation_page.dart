import 'package:animation_course/animation/fade_transation.dart';
import 'package:animation_course/animation/size_transition.dart';
import 'package:animation_course/components/custom_app_bar.dart';
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
      appBar: CustomAppBar(
        title: 'Explicit Animation',
        titleColor: Colors.white,
        background: Colors.teal,
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 10, left: 16, right: 16),
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
    color: Colors.teal,
  ),
  AnimationItemWidget(
    title: 'Size Transition',
    color: Colors.teal,
    widget: SizeTransitionExample(),
  ),
  AnimationItemWidget(
    title: 'Rotation Transition',
    color: Colors.teal,
    widget: RotatonTransitionExample(),
  ),
  AnimationItemWidget(
    title: 'Animated Builder',
    color: Colors.teal,
    widget: AnimatedBuilderExample(),
  ),
  AnimationItemWidget(
    title: 'Fade Transation',
    color: Colors.teal,
    widget: FadeTransationExample(),
  ),
  AnimationItemWidget(
    title: 'Positend Directional Transition',
    color: Colors.teal,
    widget: PositionDirectionalTransitionExample(),
  ),
  AnimationItemWidget(
    title: 'Tween Animation Builder',
    color: Colors.teal,
    widget: TweenAnimationBuilderExample(),
  ),
  AnimationItemWidget(
    title: 'Default Text Style Transition',
    color: Colors.teal,
    widget: DefaultTextStyleTransationExample(),
  ),
  AnimationItemWidget(
    title: 'Indexed Stack Transation',
    color: Colors.teal,
    widget: IndexedStackTransationExample(),
  ),
];
