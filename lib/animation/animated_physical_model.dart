import 'package:flutter/material.dart';

class AnimatedPhysicalModelExample extends StatefulWidget {
  const AnimatedPhysicalModelExample({super.key});

  @override
  State<AnimatedPhysicalModelExample> createState() =>
      _AnimatedPhysicalModelExampleState();
}

class _AnimatedPhysicalModelExampleState
    extends State<AnimatedPhysicalModelExample> {
  double _elevation = 0;
  _toggleElevation() {
    setState(() {
      _elevation = _elevation == 100 ? 0 : 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Animated Physical Model',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: _toggleElevation,
            child: AnimatedPhysicalModel(
              duration: Duration(seconds: 1),
              elevation: _elevation,
              shape: BoxShape.rectangle,
              shadowColor: Colors.blueGrey,
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/tom.png',
                width: 100,
                height: 100,
              ),
            ),
          )
        ],
      ),
    );
  }
}
