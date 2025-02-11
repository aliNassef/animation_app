import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class PositendTranslationExample extends StatefulWidget {
  const PositendTranslationExample({super.key});

  @override
  State<PositendTranslationExample> createState() =>
      _PositendTranslationExampleState();
}

class _PositendTranslationExampleState extends State<PositendTranslationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<RelativeRect> _animation1;
  late Animation<RelativeRect> _animation2;
  late Animation<RelativeRect> _animation3;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _animation1 = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(250, 250, 0, 0),
    ).animate(_animationController);

    _animation2 = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(150, 150, 0, 0),
    ).animate(_animationController);

    _animation3 = RelativeRectTween(
      begin: RelativeRect.fromLTRB(0, 0, 0, 0),
      end: RelativeRect.fromLTRB(50, 50, 0, 0),
    ).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Position Transition',
        titleColor: Colors.white,
        background: Colors.teal,
      ),
      body: Stack(
        children: [
          PositionedTransition(
            rect: _animation3,
            child: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Image.asset('assets/dog.png'),
            ),
          ),
          PositionedTransition(
            rect: _animation2,
            child: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Image.asset('assets/tom.png'),
            ),
          ),
          PositionedTransition(
            rect: _animation1,
            child: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Image.asset('assets/jerry.png'),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => _animationController.forward(),
              icon: Icon(Icons.forward),
            ),
            IconButton(
              onPressed: () => _animationController.reverse(),
              icon: Icon(Icons.forward_5),
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }
}
