import 'package:animation_course/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AnimatedOpacityExample extends StatefulWidget {
  const AnimatedOpacityExample({super.key});

  @override
  State<AnimatedOpacityExample> createState() => _AnimatedOpacityExampleState();
}

class _AnimatedOpacityExampleState extends State<AnimatedOpacityExample> {
  double opc1 = 1;
  double opc2 = 1;
  double opc3 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Animated Opacity',
        titleColor: Colors.black,
        background: Colors.orange,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: opc1,
            child: Text(
              'Tom and Jerry',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            onEnd: () {
              opc2 = opc2 == 0 ? 1 : 0;
              setState(() {});
            },
          ),
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: opc2,
            child: Image.asset(
              'assets/jerry.png',
              width: 200,
              height: 200,
            ),
            onEnd: () {
              opc3 = opc3 == 0 ? 1 : 0;
              setState(() {});
            },
          ),
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: opc3,
            child: Image.asset(
              'assets/tom.png',
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opc1 = opc1 == 0 ? 1 : 0;
          });
        },
        child: Icon(Icons.animation),
      ),
    );
  }
}
