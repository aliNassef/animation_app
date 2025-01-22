import 'package:flutter/material.dart';

class PageMixScaleRotateTranstion extends PageRouteBuilder {
  final Widget page;
  PageMixScaleRotateTranstion(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return ScaleTransition(
              scale: animation,
              child: RotationTransition(
                turns: animation,
                child: page,
              ),
            );
          },
        );
}
