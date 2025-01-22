import 'package:flutter/material.dart';

class PageSizeTranstion extends PageRouteBuilder {
  final dynamic page;
  PageSizeTranstion(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return Align(
              alignment: Alignment.center,
              child: SizeTransition(
                sizeFactor: animation,
                child: child,
              ),
            );
          },
        );
}
