import 'package:animation_course/animation/rive_animation.dart';
import 'package:flutter/material.dart';

import '../animation/custom_painter_animation.dart';
import '../animation/lottie_animation.dart';

class MoreAnimation extends StatelessWidget {
  const MoreAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'More Animation',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
