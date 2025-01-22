import 'package:flutter/material.dart';

class AnimatedPositionExample extends StatefulWidget {
  const AnimatedPositionExample({super.key});

  @override
  State<AnimatedPositionExample> createState() =>
      _AnimatedPositionExampleState();
}

class _AnimatedPositionExampleState extends State<AnimatedPositionExample> {
  bool isAnimated = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Animated Position',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            left: 0,
            top: 0,
            duration: Duration(seconds: 2),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/cheese.png'),
                  )),
            ),
          ),
          AnimatedPositioned(
            top: 0,
            left: isAnimated ? 0 : MediaQuery.sizeOf(context).width - 100,
            duration: Duration(seconds: 2),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/jerry.png'),
                  )),
            ),
          ),
          AnimatedPositioned(
            top: isAnimated ? 0 : 250,
            left: isAnimated ? 0 : 200,
            duration: Duration(seconds: 3),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/dog.png'),
                  )),
            ),
          ),
          AnimatedPositioned(
            top: isAnimated ? 0 : MediaQuery.sizeOf(context).height - 200,
            left: 0,
            duration: Duration(seconds: 3),
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/tom.png'),
                  )),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.animation_outlined),
        onPressed: () {
          setState(() {
            isAnimated = !isAnimated;
          });
        },
      ),
    );
  }
}
