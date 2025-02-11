import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class FadeTransationExample extends StatefulWidget {
  const FadeTransationExample({super.key});

  @override
  State<FadeTransationExample> createState() => _FadeTransationExampleState();
}

class _FadeTransationExampleState extends State<FadeTransationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Fade Transition',
        titleColor: Colors.white,
        background: Colors.teal,
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Image.asset('assets/jerry.png'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          _controller.reset();
          _controller.forward();
        },
        child: Icon(Icons.animation),
      ),
    );
  }
}
