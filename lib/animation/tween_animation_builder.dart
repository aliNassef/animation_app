import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class TweenAnimationBuilderExample extends StatelessWidget {
  const TweenAnimationBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Tween Animation Builder',
        titleColor: Colors.white,
        background: Colors.teal,
      ),
      body: Center(
        child: TweenAnimationBuilder(
          duration: Duration(seconds: 2),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (context, value, child) => Opacity(
            opacity: value,
            child: Container(
              color: Colors.blue,
              height: 120,
              width: 120,
              child: Center(
                child: Text(
                  'Fade me',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
