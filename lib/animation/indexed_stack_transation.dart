import 'package:flutter/material.dart';

class IndexedStackTransationExample extends StatefulWidget {
  const IndexedStackTransationExample({super.key});

  @override
  State<IndexedStackTransationExample> createState() =>
      _IndexedStackTransationExampleState();
}

class _IndexedStackTransationExampleState
    extends State<IndexedStackTransationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _opacityAnimation;
  int _crrentIndex = 0;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _scaleAnimation = Tween<double>(begin: 0.5, end: 1).animate(_controller);
    _opacityAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);

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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Indexed Stack Transation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: IndexedStack(
        index: _crrentIndex,
        children: [
          ScaleTransition(
            scale: _scaleAnimation,
            child: FadeTransition(
              opacity: _opacityAnimation,
              child: Container(
                alignment: Alignment.center,
                color: Colors.red,
                child: Image.asset('assets/jerry.png'),
              ),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              child: Image.asset('assets/dog.png'),
            ),
          ),
          ScaleTransition(
            scale: _scaleAnimation,
            child: Container(
              alignment: Alignment.center,
              color: Colors.green,
              child: Image.asset('assets/tom.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _crrentIndex = (_crrentIndex + 1) % 3;
          _controller.reset();
          _controller.forward();
          setState(() {});
        },
        child: Icon(Icons.animation),
      ),
    );
  }
}
