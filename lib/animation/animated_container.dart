import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  Color color = Colors.blue;
  double height = 100;
  double width = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Animated Container',
        titleColor: Colors.black,
        background: Colors.orange,
      ),
      body: Center(
        child: AnimatedContainer(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          duration: Duration(milliseconds: 400),
          child: Image.asset('assets/jerry.png'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (width == 100) {
            setState(() {
              color = Colors.teal;
              width = 200;
              height = 200;
            });
          } else {
            setState(() {
              color = Colors.blue;
              width = 100;
              height = 100;
            });
          }
        },
        child: Icon(Icons.animation),
      ),
    );
  }
}
