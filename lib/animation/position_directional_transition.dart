import 'package:flutter/material.dart';

class PositionDirectionalTransitionExample extends StatefulWidget {
  const PositionDirectionalTransitionExample({super.key});

  @override
  State<PositionDirectionalTransitionExample> createState() =>
      _PositionDirectionalTransitionExampleState();
}

class _PositionDirectionalTransitionExampleState
    extends State<PositionDirectionalTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<RelativeRect> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(150, 150, 0, 0),
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Position Directional Transition',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) => PositionedDirectional(
              start: _animation.value.left,
              top: _animation.value.top,
              bottom: _animation.value.bottom,
              child: Container(
                width: MediaQuery.sizeOf(context).width,
                height: MediaQuery.sizeOf(context).height,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.reset();
          _controller.forward();
        },
        child: Icon(Icons.animation),
      ),
    );
  }
}
