import 'package:flutter/material.dart';

class RotatonTransitionExample extends StatefulWidget {
  const RotatonTransitionExample({super.key});

  @override
  State<RotatonTransitionExample> createState() =>
      _RotatonTransitionExampleState();
}

class _RotatonTransitionExampleState extends State<RotatonTransitionExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );
    _animation = Tween<double>(begin: 0, end: 4).animate(
      _controller,
    );
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
          'Rotaton Transition',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: RotationTransition(
          turns: _animation,
          child: Image.asset('assets/jerry.png'),
        ),
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
