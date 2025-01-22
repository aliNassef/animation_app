import 'package:animation_course/animation/animated_align.dart';
import 'package:animation_course/animation/animated_cross_fade.dart';
import 'package:animation_course/animation/animated_opacity.dart';
import 'package:animation_course/animation/animated_switcher.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Implicit Animation',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 10),
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
  ),
  AnimationItemWidget(
    title: 'Animated Container',
    widget: AnimatedContainerExample(),
  ),
  AnimationItemWidget(
    title: 'Animated Text',
    widget: AnimatedTextExample(),
  ),
  AnimationItemWidget(
    title: 'Animated opacity',
    widget: AnimatedOpacityExample(),
  ),
  AnimationItemWidget(
    title: 'Animated Padding',
    widget: AnimatedPaddingExample(),
  ),
  AnimationItemWidget(
    title: 'Animated physical model',
    widget: AnimatedPhysicalModelExample(),
  ),
  AnimationItemWidget(
    title: 'Animated position',
    widget: AnimatedPositionExample(),
  ),
  AnimationItemWidget(
    title: 'Animated position directional',
    widget: AnimatedPositionDirectionalExample(),
  ),
  AnimationItemWidget(
    title: 'Animated cross fade',
    widget: AnimatedCrossFadeExample(),
  ),
  AnimationItemWidget(
    title: 'Animated switcher',
    widget: AnimatedSwitcherExample(),
  ),
  AnimationItemWidget(
    title: 'Animated list state',
    widget: AnimatedListStateExample(),
  ),
];
