import 'package:flutter/material.dart';

class PageMixFadeSizeTranstion extends PageRouteBuilder {
  final Widget page;
  PageMixFadeSizeTranstion(this.page)
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SizeTransition(
              sizeFactor: animation,
              child: FadeTransition(
                opacity: animation,
                child: page,
              ),
            );
          },
        );
}
