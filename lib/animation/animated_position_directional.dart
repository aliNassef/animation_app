import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class AnimatedPositionDirectionalExample extends StatefulWidget {
  const AnimatedPositionDirectionalExample({super.key});

  @override
  State<AnimatedPositionDirectionalExample> createState() =>
      _AnimatedPositionDirectionalExampleState();
}

class _AnimatedPositionDirectionalExampleState
    extends State<AnimatedPositionDirectionalExample> {
  double _top = 0;
  double _start = 0;
  void _moveUp() {
    if (_top > 0) {
      _top -= 50;
      setState(() {});
    }
  }

  void _moveDown() {
    if (_top < MediaQuery.sizeOf(context).height - 300) {
      _top += 50;
      setState(() {});
    }
  }

  void _moveLeft() {
    if (_start > 0) {
      _start -= 50;
      setState(() {});
    }
  }

  void _moveRight() {
    if (_start < MediaQuery.sizeOf(context).width - 200) {
      _start += 50;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Animated Position Directional',
        titleColor: Colors.black,
        background: Colors.orange,
      ),
      body: Center(
        child: Stack(
          children: [
            AnimatedPositionedDirectional(
              top: _top,
              start: _start,
              duration: Duration(seconds: 2),
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/dog.png'),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_circle_up),
            onPressed: () {
              _moveUp();
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_circle_down),
            onPressed: () {
              _moveDown();
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_circle_left),
            onPressed: () {
              _moveLeft();
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_circle_right),
            onPressed: () {
              _moveRight();
            },
          ),
        ],
      ),
    );
  }
}
