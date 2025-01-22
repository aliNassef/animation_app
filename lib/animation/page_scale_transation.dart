import 'package:flutter/material.dart';

class PageScaleTransation extends PageRouteBuilder {
  final dynamic page;
  PageScaleTransation(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Align(
              alignment: Alignment.center,
              child: ScaleTransition(
                scale: animation,
                child: child,
              ),
            );
          },
        );
}
