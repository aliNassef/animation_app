import 'package:animation_course/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

import '../animation/custom_painter_animation.dart';
import '../animation/lottie_animation.dart';

class MoreAnimation extends StatelessWidget {
  const MoreAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'More Animation',
        titleColor: Colors.black,
        background: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomPainterAnimationExample(),
                        ),
                      );
                    },
                    child: Text('Custom Painter Animation'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LottieAnimationExample(),
                        ),
                      );
                    },
                    child: Text('Lottie Animation'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
