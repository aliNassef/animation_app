import 'package:flutter/material.dart';

class PageRotateTransition extends PageRouteBuilder {
  final Widget page;
  PageRotateTransition(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return RotationTransition(
              turns: animation,
              child: child,
            );
          },
        );
}
