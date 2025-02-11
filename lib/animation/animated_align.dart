import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignExampleState();
}

class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
  int _currentJerryPos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Animated Align',
        titleColor: Colors.black,
        background: Colors.orange,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            AnimatedAlign(
              alignment: getAlignment(_currentJerryPos),
              duration: Duration(milliseconds: 100),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/jerry.png'),
              ),
            ),
            AnimatedAlign(
              alignment: getAlignment(_currentJerryPos + 1),
              duration: Duration(milliseconds: 400),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/tom.png'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _currentJerryPos = (_currentJerryPos + 1);
          });
        },
        child: Icon(Icons.animation),
      ),
    );
  }

  Alignment getAlignment(int pos) {
    switch (pos) {
      case 0:
        return Alignment.topLeft;
      case 1:
        return Alignment.topRight;
      case 2:
        return Alignment.bottomLeft;
      case 3:
        return Alignment.bottomRight;
      case 4:
        return Alignment.centerLeft;
      case 5:
        return Alignment.centerRight;
      case 6:
        return Alignment.centerLeft;
      case 7:
        return Alignment.topCenter;
      case 8:
        return Alignment.bottomCenter;
      default:
        _currentJerryPos = 0;
        return Alignment.center;
    }
  }
}
