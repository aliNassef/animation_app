import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class RiveAnimationExample extends StatefulWidget {
  const RiveAnimationExample({super.key});

  @override
  State<RiveAnimationExample> createState() => _RiveAnimationExampleState();
}

class _RiveAnimationExampleState extends State<RiveAnimationExample> {
  final List<String> paths = [
    'assets/rive/bear.json',
    'assets/rive/girl.json',
    'assets/rive/rating.json'
  ];
  int currentIndex = 0;
  final _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Rive Animation',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: PageView.builder(
        itemCount: paths.length,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
            setState(() {});
          });
        },
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        itemBuilder: (context, index) => Center(
            child: Lottie.asset(paths[index], repeat: true, reverse: false)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          _pageController.animateToPage(
            value,
            duration: Duration(milliseconds: 500),
            curve: Curves.linear,
          );
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.animation_outlined),
            label: 'Bear',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation),
            label: 'Girl',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.animation),
            label: 'Rating',
          ),
        ],
      ),
    );
  }
}
