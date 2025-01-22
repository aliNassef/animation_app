import 'package:flutter/material.dart';

class PageFadeTransation extends PageRouteBuilder {
  final dynamic page;
  PageFadeTransation(this.page)
      : super(
          transitionDuration: Duration(seconds: 2),
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Align(
              alignment: Alignment.center,
              child: FadeTransition(
                opacity: animation,
                child: child,
              ),
            );
          },
        );
}
