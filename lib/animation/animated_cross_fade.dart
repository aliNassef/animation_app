import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  CrossFadeState _crossFadeStaterossFade = CrossFadeState.showFirst;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Animated CrossFade',
        titleColor: Colors.black,
        background: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedCrossFade(
            firstChild: Image.asset('assets/tom.png'),
            secondChild: Image.asset('assets/jerry.png'),
            crossFadeState: _crossFadeStaterossFade,
            duration: const Duration(
              seconds: 1,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _makeCrossFade();
        },
        child: Icon(Icons.animation),
      ),
    );
  }

  _makeCrossFade() {
    _crossFadeStaterossFade == CrossFadeState.showSecond
        ? _crossFadeStaterossFade = CrossFadeState.showFirst
        : _crossFadeStaterossFade = CrossFadeState.showSecond;
    setState(() {});
  }
}
