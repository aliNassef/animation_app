import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class DefaultTextStyleTransationExample extends StatefulWidget {
  const DefaultTextStyleTransationExample({super.key});

  @override
  State<DefaultTextStyleTransationExample> createState() =>
      _DefaultTextStyleTransationExampleState();
}

class _DefaultTextStyleTransationExampleState
    extends State<DefaultTextStyleTransationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final TextStyle _style1 = TextStyle(
    fontSize: 26,
    color: Colors.red,
    fontWeight: FontWeight.normal,
  );

  final TextStyle _style2 = TextStyle(
    fontSize: 36,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Default Text Style Transation',
        titleColor: Colors.white,
        background: Colors.teal,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyleTransition(
              style: _animation.drive(
                TextStyleTween(begin: _style1, end: _style2),
              ),
              child: Text('Ali Nassef'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isCompleted) {
            _controller.reverse();
          } else {
            _controller.reset();
            _controller.forward();
          }
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
