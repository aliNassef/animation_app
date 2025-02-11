import 'package:animation_course/animation/animated_align.dart';
import 'package:animation_course/animation/animated_cross_fade.dart';
import 'package:animation_course/animation/animated_opacity.dart';
import 'package:animation_course/animation/animated_switcher.dart';
import 'package:animation_course/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../animation/animated_container.dart';
import '../animation/animated_list_state.dart';
import '../animation/animated_padding.dart';
import '../animation/animated_physical_model.dart';
import '../animation/animated_position.dart';
import '../animation/animated_position_directional.dart';
import '../animation/animated_text.dart';
import '../widgets/animation_item.dart';

class ImplicitAnimation extends StatelessWidget {
  const ImplicitAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Implicit Animation',
        titleColor: Colors.black,
        background: Colors.orange,
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 10, left: 16, right: 16),
        itemBuilder: (_, idx) => implicitAnimationItems[idx],
        separatorBuilder: (_, __) => SizedBox(
          height: 10,
        ),
        itemCount: implicitAnimationItems.length,
      ),
    );
  }
}

List implicitAnimationItems = [
  AnimationItemWidget(
    title: 'Animated Align',
    widget: AnimatedAlignExample(),
    color: Colors.orange,
  ),
  AnimationItemWidget(
    title: 'Animated Container',
    widget: AnimatedContainerExample(),
    color: Colors.orange,
  ),
  AnimationItemWidget(
    title: 'Animated Text',
    widget: AnimatedTextExample(),
    color: Colors.orange,
  ),
  AnimationItemWidget(
    title: 'Animated opacity',
    widget: AnimatedOpacityExample(),
    color: Colors.orange,
  ),
  AnimationItemWidget(
    title: 'Animated Padding',
    widget: AnimatedPaddingExample(),
    color: Colors.orange,
  ),
  AnimationItemWidget(
    color: Colors.orange,
    title: 'Animated physical model',
    widget: AnimatedPhysicalModelExample(),
  ),
  AnimationItemWidget(
    title: 'Animated position',
    widget: AnimatedPositionExample(),
    color: Colors.orange,
  ),
  AnimationItemWidget(
    title: 'Animated position directional',
    widget: AnimatedPositionDirectionalExample(),
    color: Colors.orange,
  ),
  AnimationItemWidget(
    title: 'Animated cross fade',
    widget: AnimatedCrossFadeExample(),
    color: Colors.orange,
  ),
  AnimationItemWidget(
    title: 'Animated switcher',
    widget: AnimatedSwitcherExample(),
    color: Colors.orange,
  ),
  AnimationItemWidget(
    title: 'Animated list state',
    widget: AnimatedListStateExample(),
    color: Colors.orange,
  ),
];
