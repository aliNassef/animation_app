import 'package:flutter/material.dart';

import '../components/custom_app_bar.dart';

class AnimatedSwitcherExample extends StatefulWidget {
  const AnimatedSwitcherExample({super.key});

  @override
  State<AnimatedSwitcherExample> createState() =>
      _AnimatedSwitcherExampleState();
}

class _AnimatedSwitcherExampleState extends State<AnimatedSwitcherExample> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Animated Switcher',
        titleColor: Colors.black,
        background: Colors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AnimatedSwitcher(
            duration: Duration(seconds: 1),
            switchInCurve: Curves.linear,
            switchOutCurve: Curves.linear,
            transitionBuilder: (child, animation) => child,
            child: isVisible
                ? ElevatedButton(
                    onPressed: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.blue),
                    ),
                    child: Text(
                      'login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      isVisible = !isVisible;
                      setState(() {});
                    },
                    child: CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
    );
  }
}
